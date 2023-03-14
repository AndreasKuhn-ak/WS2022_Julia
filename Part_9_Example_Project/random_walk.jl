using CSV, DataFrames
using GLMakie,ColorSchemes, Random

function create_objects(Gridsize, Cell_number)
    Grid = zeros(Int64, Gridsize, Gridsize)
    Cell_list = Vector{Vector{Int64}}(undef,0)
    return Grid, Cell_list
end

function populate_sys!(Grid, Cell_list, Starting_config,Gridsize, Cell_number) 
    if Starting_config == "random"
        i = 1
        while i <= Cell_number
            x = rand(1:Gridsize)
            y = rand(1:Gridsize)
            if Grid[x,y] == 0 
                Grid[x,y] = i
                push!(Cell_list,[x,y])
                i += 1
            end
        end
    end
    if Starting_config == "square"
        #calculate edge length of square of cells
        Edge_length = round(Int64,sqrt(Cell_number))
        # round cell_number to closest square number
        Cell_number = Edge_length^2
        #calculate starting x and y value of corner of square on grid
        X_corner = round(Int64,Gridsize/2-Edge_length/2)
        Y_corner = round(Int64,Gridsize/2-Edge_length/2)
        #all the rounding is needed to get to discrete grid points
        i = 1
        for x = 1:Edge_length
            for y = 1:Edge_length
                Grid[X_corner+x, Y_corner+y] = i
                push!(Cell_list,[X_corner+x,Y_corner+y])
                i += 1
            end
        end
    end
    #return everything that could have changed
    return Grid, Cell_list, Cell_number
end

function plot_sim(Cell_list, Gridsize)
    # make plot look nicer in black ; )
    set_theme!(theme_black())

    # using array comprehensions to create positions array of x and y
    x = [i[1] for i in Cell_list]
    y = [i[2] for i in Cell_list]
    # calculate the distance r for every cell fromm the center
    
    ## explain better 
    r = (((x.-Gridsize/2).^2+(y.-Gridsize/2).^2).^(1/2))

    Fig1 = Figure(resolution = (1000,1000))
    Ax1 =Axis(Fig1[1,1],title = "Startconfig",titlesize = 35)
    xlims!(Ax1,0,Gridsize)
    ylims!(Ax1,0,Gridsize)
    # using the distance r together with a colormap to give the cells different colors
    Scatty = scatter!(Ax1,x,y,color = r,colormap = :dense,label = "particle",marker = :circle,markersize = 8)

    return Fig1, Ax1 , Scatty
end

function update_sys(Grid, Cell_list, Gridsize,Timesteps)
    Cell_list_alltime =  Vector{Vector{Vector{Int64}}}(undef,0)           # super cell list which contains one cell_list per timestep 
    mov_vec = [[0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[-1,1],[1,-1]]     #possible movement vectors to the next gridpoint
    sequence_vec = collect(1:8)                                           # sequence_vec is used to acess the mov_vec
    
    
    Cell_list_copy = deepcopy(Cell_list)                                  # make real copy (no reference) of Cell_list and push it into cell_list altime 
    push!(Cell_list_alltime,Cell_list_copy)
    for t = 1:Timesteps
        for (j,Cell) in  enumerate(Cell_list)
            shuffle!(sequence_vec)                                        # use shuffle function from random to esure random movement of particles
            for sque in sequence_vec
                x_next = Cell[1] + mov_vec[sque][1]
                y_next = Cell[2] + mov_vec[sque][2]
                
                if x_next >= 1 && x_next <= Gridsize && y_next >= 1 && y_next <= Gridsize    # check if gridpoint is out of bounds of grid
                    if Grid[x_next,y_next] == 0 && Grid[Cell[1],Cell[2]] != 0                # check if target gridpoint is empty and sanity check if cell exists on previous gridpoint
                        Grid[Cell[1],Cell[2]] = 0 
                        Grid[x_next,y_next]  = j 
                        
                        Cell[1] = x_next
                        Cell[2] = y_next
                        break
                    end
                end
            end
        end
        Cell_list_copy = deepcopy(Cell_list)                                   # creating copy of cell list in order to avoid a pass by refernce. 
        push!(Cell_list_alltime,Cell_list_copy)
    end
    return(Cell_list_alltime)
end


function animation_2D(Data_gr,Gridsize) 
    t = Observable(1)
    x = @lift(Data_gr[$t].:x)
    y = @lift(Data_gr[$t].:y)
    r = @lift((($x.-Gridsize/2).^2+($y.-Gridsize/2).^2).^(1/2))
    titel = @lift(string($t))

    set_theme!(theme_black())

    fig6 = Figure(resolution = (1000,1000))
    ax6 =Axis(fig6[1,1],title = @lift("timestep : $(round(Int64,$t))"),titlesize = 35)
    xlims!(ax6,0,Gridsize)
    ylims!(ax6,0,Gridsize)
    scatty6 = scatter!(ax6,x,y,color = r,colormap = :dense,label = "particle",marker = :circle,markersize = 15)

    #hidedecorations!(ax6)
    axislegend(ax6)
    display(fig6)
    return t,fig6
end

function animation_3D(Data_gr,Gridsize) 
    # make sure that camera flight is not too fast
    if length(Data_gr) >= 1000
        len = length(Data_gr)
    else
        len = 1000
    end
    t = Observable(1)
    
    x = @lift(Data_gr[$t].:x)
    y = @lift(Data_gr[$t].:y)
    r = @lift((($x.-Gridsize/2).^2+($y.-Gridsize/2).^2).^(1/2))
    titel = @lift(string($t))
    # define the camara angle
    elevations = range(start = -2π,stop = 2π, length = len)
    azimuths = range(start = 0,stop = 2π, length = len)
    z = zeros(length(Data_gr[1].:x))
    set_theme!(theme_black())

    fig7 = Figure(resolution = (2000,2000))
    ax7 =Axis3(fig7[1,1],
        title = @lift("timestep : $(round(Int64,$t))"),
        elevation =@lift(elevations[$t])  , azimuth = @lift(azimuths[$t]),
        viewmode = :fit,
        titlesize = 35,protrusions = (0, 0, 0, 40)
        )   

    xlims!(ax7,0,Gridsize)
    ylims!(ax7,0,Gridsize)
    zlims!(-Gridsize/2,Gridsize/2)

    scatty7 = scatty = meshscatter!(ax7,x,y,z,markersize = 2.5,color = r,
        
    
        ##choose the twilight scheme 
        
        
        colormap = :twilight
        ,label = "particle")
    #hidedecorations!(ax7)
    display(fig7)
    return t,fig7
end


function run_animation(T,Timesteps)
    @async for i in 2:1:Timesteps
        T[] = T[]+1
        sleep(0.005)
    end
    T[] = 1
end

function save_animation(T,Fig,Data_gr, Name)
    record(Fig, "$(Name).mp4",1:length(Data_gr); framerate = 30) do i
    T[] = i
    end
end


function save_settings(Gridsize,Cell_number,Timesteps,Starting_config, Name)
    settings = Dict("gridsize" => Gridsize, "cell_number" => Cell_number, 
        "timesteps" =>Timesteps, "starting_config" => Starting_config)
    open("$(Name).txt","w") do file
        print(file,settings)
    end 
end

function convert_to_DF(cell_list_alltime)
    cell_number = length(cell_list_alltime[1])
    Data = DataFrame(timestep = ones(Int64,cell_number),id= collect(1:cell_number),
        x = [i[1] for i in cell_list_alltime[1]],y = [i[2] for i in cell_list_alltime[1]])
    for j in 2:length(cell_list_alltime)
        append!(Data,DataFrame(timestep = ones(Int64,cell_number).*j,id= collect(1:cell_number),
                x = [i[1] for i in cell_list_alltime[j]],y = [i[2] for i in cell_list_alltime[j]]))
    end
    return Data
end