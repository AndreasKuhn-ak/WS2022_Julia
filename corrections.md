### General:
remove cell with output
make sure that if I made changes to the exercises in the main notebook, that its also changed in the solutions notebook 


### Julia_Notebooks
Edit a cell: Not sure what you mean - does not work like that

Short cuts: the reference is a bit dodgy - a lot of advertisement that has to be skipped and a lot of scrolling, maybe better use View->Activate Command Palette 

3. Markdown language:
strictly speakig, the text cell is not called markdown, but the "language" that yo use to write the content
"Line breaks only with the enter key do not work reliable." What do you mean?

the "guess the number" should have a noption of stopping it, if one is not in the mood for guessing

6. Operators:
"Operators in Julia are quite similar to mathematical operators:" - only the last three, not the first three

in Julia, can + also be used fro concatenation, if so, that is not as in mathematics

9. Multi-line statements
<p style='text-align: justify;'> was not in the other text cells, should be consistent for all course noteooks


### Package_Install
Description: Maybe a few words about why there are packages and what they are for? Why isn't everything just included?

you are mixing 'using' and installing packages - maybe a word about the difference. Or an introductory sentence of why for the DataFrames, it needs to be installed.
For the installing - do you need internet connection?

### Datatypes
3. str - Strings

choose a different name for your example string in the text, currently, it is *string* and the function to turn something into a string, is also *string*   :heavy_check_mark:

4.1 Array
the "ordered" in eth first sentencemight be confusing. In particular, since your example later on is [1,2,3,4,5,6] People might think, that the content is always ordered by value.

why could it be helpful to assign the type manually?

Out of curiosity: Why is it important tha Julia calls things vectors or matrices? Isn't that an unnecessary level of complexity?

- It not really important, its just Vector{} and Matrix{} are just aliases for Array(dim = 1){} resp. Array(dim = 2){} 


Are 2D array restricted to Matrices, i.e. does each subarray have to have the same length?

- 2D arrays have no subarrays in the sense of Python/numpy, where a 2D array is just a 1D array with 1D arrays as elements. They are a seperate datastructure where all columns and rows must have the same length and all elements the same type.  But its also possible to create arbitarily complex nested Vectors (1D-arrays) with subarrays/vector,... like in numpy. Then, there are no restrictions on size and types.   




4.1.1 Array functions
"the sum of all elements of an array (only works on `Int64` and `Float`)" what about int16 and int32?

One exercise concerning the cases shown for using [] and () brackets might be good.

In teh exercises, you mentioned lists. Is that a left-over from Python or is there a data type list in Julia?

https://www.varsitytutors.com/hotmath/hotmath_help/topics/multiplying-vector-by-a-matrix
Was this just a random choice or do you know these pages - in particular, are they maintained well?

Exercises:
5. I woudl expect teh solution println(string2[2:2:end])
9. The way the exercise was given, I would go for vcat, not append!.
10. Expand this exercise by comparing the result between array4_2=array4 and array4_2=array4[:] to make the difference of copies clear. Maybe even better, put it in the main part.
18. this should be easy - it is in the lecture part
15. solution: the dot is not needed because it is a vector
19. solution: collect is not needed
21. As it stands, it should be easy - a possibility is in teh lecture part. Maybe modify to find two possibilities ... since one could use slicing or reverse()
23. for the solution: 
longArray=vcat(array1,array2,array3,array4,array4_2,array5,array6)
count(3 .==longArray)
or 
count(i->(i==3),longArray) (I do not understand this syntax, but it is the first thing that comes up when using Google)

### Conditional_Iterators
I would start with an explanatory sentence about what Boolean expressions are
Mention that the spaces are important, e.g. 5. > 2 requires spaces
    - normally there are no spaces required the case 5.>2 is a special case, as without space julia interprets this as the vectorized bigger operator and with space as 5.0 > 2 for 5.0>2 it does not matter if there are spaces 

Exercises
3. why do a and g instead of f? That doesn't seem to add a new level?
- i wrote a nice compact version with a loop, students could be inspired by that, or maybe come up with it themselves, will added a hint in the description 

12. in der Aufgabe steht every OTHER point, bei deiner Lösung berechnest du aber auch die Distanz von dem Punkt zu sich selbst - das beeinflusst den Mean
- hab ich mit einer extra if conditon in der lösung angepasst

### Functions

"Strings will be printed directly."
Nicht nur strings - println(5) gibt 5 aus - ob als string, weiß ich nicht
- hab ich angepasst und um nummers erweitert

1.1 "You can also create the object in place" Das verstehe ich nicht. Kannst du das anders formulieren?
-hab ich angepasst

Warum hast du denn mit der random Funktion angefangen. Kannst du das motivieren? Wenn ich zum ersten Mal programmiere, scheint das erstmal nicht wie eine besonders nützliche Funktion. Und dann kommt auch noch das Paket Random ...
- ich habs bissle was dazu geschrieben, dass es ein gutes beispiel für functions in general ist, da es sehr viele generelle functions concepte mit rand() abgedeckt werden

- added something why random is important in programming

you use the words collection and iterable objects for seemingly the same thing. Can you put a comment somewhere what the two are?
- wird schon im datentypes und conditonal iterators spezifiziert. Hab hier nochmal genau draufgeachtet, dass ich die nicht ausstauschbar verwendet werden, sondern nur das jeweils richtige object

1.9 Weher do I find the default value of a keyword argument?
- with ? or offical docs, hab ich ergänzt

2. "generic function with 1 method" explain what "method" means in this output and what is the #with the number?
- puh ich glaub das würde ich weglassen, weil das sonst schnell viel zu kompliziert wird.
- dahinter steht das key feature von julia multiple dispatch, das functions abhäning von ihren input argumenten verschiedene dinge tun können
- also z.b. das rand() einen float returned aber rand(1:10) einem Int usw... obwohl das der gleiche functionsname ist

println(sort( ["bbb","aaaaaaaaa","cccccc"],by = x->length(x))) I remember that the arguments with anonymous functions where very tricky when I first encountered them. Maybe write in the cell below what exactly happens here: what does the x stand for , ...
- i added some explanations 


2.1.1. Map was also very tricky for me at the start. Maybe istead of collect use a specific array, e.g. [1,2,3,4]. Otherwise the collect distracts from the map
- changed that

"But the big advantage of the map function compared to the . notation is that you can define an anonymous function right in place."

Stimmt so nicht:
(x->x^3+x^2+x).(collect(1:10))
geht genauso
- Hab ich angepasst, 

Schau nochmal nach ob . und Map nicht genau das gleiche machen - und dann solltest du nicht "Broadcasting" für das eine und "Map" für das andere als Beschreibung verwenden.
- tasächlich machen sie nicht genau das gleiche aber fast, wird dann ziemlich technisch... werd ich erstmal weglassen

2.4  "The only way, to make a local variable inside a function visible to the outside, is by returning its value and assigning it to a new variable."
Are you sure, it is the only way? There seem sto be a way to make variables global: https://discourse.julialang.org/t/how-to-correctly-define-and-use-global-variables-in-the-module-in-julia/65720

Maybe, just say "one way..."
- Sorry fürs klugscheißen, aber mein originales statment ist richtig, hier wird nur gezeigt, wie man globale variablen in einer functiona aufruft, ohne sie als parameter zu übergeben (was man btw nie tun sollte)

Exercises: 
11 "Now you have a plot containing the measured data and the ground truth" that was not clear from the previous exercises
- hab die vorherige augabe angepasst


 Solution 13: half of the sentence is missing : "If you are confused about the complex if and elseif conditions  "

- hab angepasst

 


 
### Plots
3.
die Label in den plots tauchen nihct auf: sinus, random, airplanes,...
ach so, die Label sind für die Legend. Das ist aber vor 4. verwirrend was die machen
- hab ich angepasst, und erst die labels eingeführt wenn sie auch direkt verwendet werden

das Wort axis ist etwas verwirrend - eigentlich meinst du coordinate system oder set of axes, aber weil das der Befehl ist, hast du singular verwendet 
- hab ich einen kommentar zu geschrieben, wie axis zu verstehen ist

bei dem 3. Histogramm ist das graue Kästchen in der Legende nicht sinnvoll
- ist weg

Exercises
bei den Lösungen fehlen die y-Achsenbeschriftungen für die Histogramme
- ist angepasst


### File Management
"As relative paths are always given in relation to the notebook path, the relative path to this notebook is just nothing."
Da verstehe ich nicht was gemeint ist und auch nicht was der Unterschied zwischen
readdir(path_notebook)  # absolute path 
und
readdir()              # relative path    
ist.

- hab ich etwas weiter ausgeführt, hoffe das ist nun besser zu verstehen 

Ich würde JSON nicht unter "human readable" angeben. ich glaube nicht, dass das der Anspruch ist, sondern eher dass man damit Daten die nicht in ein csv Format passen gut zwischen Programmiersprachen austauschen kann.
Unter "human readable" würde ich eine .csv Format verstehen

Bei deinem Parsing-Problem kommst du jetzt genau bei JSON an, das du vorhar abgetan hast mit "one worse than the other" Diesen Kommentar solltest du nochmal überdenken und eher darauf eingehen wann welches Tools sinnvoll ist und wann nicht. 

Wie du an meinen Kommentaren siehst solltest du die Storyline von Teil 7 nochmal überdenken. Für jemanden der noch nie programmiert hat, passt das vielleicht so. Aber wenn man aus einer anderen Sprache kommt, dann wundert man sich was du da machst.
Meiner Meinung nach sind die wichtigen Punkte:
- Schnelligkeit (Julia-Format)
- Austausch von numerischen Daten zwischen Sprachen und human readable (csv)
- Austausch von beliebigen Daten zwischen Sprachen und anschaubar, aber nicht wirklich human readable (JSON)

Warum hast du nur hier eine short summary - das wäre bei den anderen Notebooks doch auch sinnvoll, oder?

einheitliche Schreibweise: .csv oder csv, .jls or jls, ...

bei Lösung 7 geht irgendwas schief -> ok, das war weil die .png noch drin war (das ist eine Sollbruchstelle, weil du genau aufpassen musst, dass du den ganzen Output gelöscht hast)

so wie es im Moment ist, müsstest du aber dazu schreiben, dass man die Aufgaben genau in der Reihenfolge abarbeiten muss

Die Idee vom Ampelsystem ist ja eigentlich, dass sich jeder die Aufgaben raussucht die er passend findet

### Data analysis
Make clear early on what you want to do with the data set. I am now at 3. and still don't know what you are getting at. 
Maybe present the aim and the necessary steps to get there

Also, as it stands, I would ask why did you use a data set with weird labels for teaching. You could also just provide the data in a format that can be used directly for data analysis. Why do you have german labels in an english course?

2. Chained operations

"However, if you use different macros in your own coding, you should always make sure you know what they are doing." Das gilt doch ganz allgemein für eigenen Code, dass man wissen sollte was er macht?

Kannst du noch ein einfaches Beispiel für @chain hinzufügen? So ganz ist mir das noch nicht klar

"never use Strings as column names" - so why do you have them in your example?

3. Cleaning and structuring data
Explain the ":" in the labels

was sind "getter function"? 
 was ist der Unterschied zwischen day und day of month?
 
Woher weiß ich denn, dass 2022 incomplete ist? Das müsste ich doch erstmal anschauen 

data.monthday = string.(data.monthday) maybe make a comment to remind people what the  . after string means

4.
Warum steht das hier noch da: #xticks = (194, string.(data.year)[1:10*365:nrow(data)] ))

 With the help of some googling ...
 Der Link führt auf eine deutschsprachige Webseite. Das ist hier nicht so sinnvoll. AUßerdem ist auch nicht klar wie zuverlässig die Informationen auf dieser Seite sind.
 
Die Wikipediaseite ist auch Deutsch und auf der englischen gibt es leider kein Klimadiagramm

5.
beim Plot avreage Temperatur fehlt die Beschriftung der x-Achse. Bei den Plots vorher streng genommen auch. 

beim durchschnittlich heißesten und kältesten Tag fehlt die Legende für die Farben; und wäre eine schönere Darstellung für das Datum möglich?

"The on average coldest and warmest days do not all line up next to each other" Was meinst du damit?

Beim heißesten udn kältestend Tag fehlt die Legende für die Farben
Genauso bei Delta Temp per day

stelle sicher, dass du data frame/dataframe/dataFrame und data set/dataset immer gleich schreibst

Solution 7
 "significant variance" significant kannst du nur hinschreiben, wenn du das gezeigt hast z.B. durch Hypothesentest. Es ist kein Synonym für groß.
 
Solution 9
"This simple analysis reveals no significant difference between leap and normal years in..."
auch hier wieder significant 
 
 Was ist dieses Notebook: Julia_Data_Analysis_exercise_solutions

### Example Project
"Note: The undef keyword"
Warum diese Notiz. Das Keyword ist gar nicht aufgekommen

achet darauf, dass grid point/gridpoint immer einheitlich geschrieben ist

in function Plot_sim ist ein Kommentar "## explain better"?

Grid_visu_3.png und Grid_visu_4.png: hier sollet in der Legende der grün-gestrichelte Pfeil nicht mehr auftauchen

function update_sys:
Vielleicht solltest du noch sagen was am Rand des grids passiert 

neighbor oder neighbour einheitlich schreiben
 
den Link https://stackoverflow.com/questions/38936868/in-julia-functions-passed-by-reference-or-value finde ich nicht besonders hilfreich, wenn man der Ausdruck noch nie gesehen hat.

fig2 und fig3 haben noch startconfig als Label, zeigen aber den letzten Zeitpunkt

10.7

"comment: ... But in this case, it serves other purposes and sh:" Was ist sh?

Ist es wirklich wichtig und sinnvoll die Agenten "cells" zu nennen?
In manchen Forschungsbereichen werden die Gridpukte auch geren cell genannt und Leute aus diesem Bereich könnte das sehr verwirren.

Exercise 1: was meinst du mit small und large system? die Gittergröße oder die Anzahl der Agenten?

Exercise 8: in random_walk.jl in der Funktion populate_sys!() fehlt die Option für den Kreis

Exercise 9: so schlimm sieht die doch gar nicht aus. Nach der ganzen Vorarbeit sind das ja nur noch ein paar Zeilen.

Warum gibt es ein extra Notebook executor? Kann das nicht zu den Lösungen mit dazu?