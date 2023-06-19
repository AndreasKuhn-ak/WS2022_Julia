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

Exercises
3. why do a and g instead of f? That doesn't seem to add a new level?

12. in der Aufgabe steht every OTHER point, bei deiner Lösung berechnest du aber auch die Distanz von dem Punkt zu sich selbst - das beeinflusst den Mean

### Functions

"Strings will be printed directly."
Nicht nur strings - println(5) gibt 5 aus - ob als string, weiß ich nicht

1.1 "You can also create the object in place" Das verstehe ich nicht. Kannst du das anders formulieren?

Warum hast du denn mit der random Funktion angefangen. Kannst du das motivieren? Wenn ich zum ersten Mal programmiere, scheint das erstmal nicht wie eine besonders nützliche Funktion. Und dann kommt auch noch das Paket Random ...

you use the words collection and iterable objects for seemingly the same thing. Can you put a comment somewhere what the two are?

1.9 Weher do I find the default value of a keyword argument?

2. "generic function with 1 method" explain what "method" means in this output and what is the #with the number?

println(sort( ["bbb","aaaaaaaaa","cccccc"],by = x->length(x))) I remember that the arguments with anonymous functions where very tricky when I first encountered them. Maybe write in the cell below what exactly happens here: what does the x stand for , ...

2.1.1. Map was also very tricky for me at the start. Maybe istead of collect use a specific array, e.g. [1,2,3,4]. Otherwise the collect distracts from the map

"But the big advantage of the map function compared to the . notation is that you can define an anonymous function right in place."

Stimmt so nicht:
(x->x^3+x^2+x).(collect(1:10))
geht genauso

Schau nochmal nach ob . und Map nicht genau das gleiche machen - und dann solltest du nicht "Broadcasting" für das eine und "Map" für das andere als Beschreibung verwenden.

2.4  "The only way, to make a local variable inside a function visible to the outside, is by returning its value and assigning it to a new variable."
Are you sure, it is the only way? There seem sto be a way to make variables global: https://discourse.julialang.org/t/how-to-correctly-define-and-use-global-variables-in-the-module-in-julia/65720

Maybe, just say "one way..."

Exercises: 
11 "Now you have a plot containing the measured data and the ground truth" that was not clear from the previous exercises
 Solution 13: half of teh sentence is missing : "If you are confused about the complex if and elseif conditions  "
 
### Plots
3.
die Label in den plots tauchen nihct auf: sinus, random, airplanes,...
ach so, die Label sind für die Legend. Das ist aber vor 4. verwirrend was die machen

das Wort axis ist etwas verwirrend - eigentlich meinst du coordinate system oder set of axes, aber weil das der Befehl ist, hast du singular verwendet 

bei dem 3. Histogramm ist das graue Kästchen in der Legende nicht sinnvoll

Exercises
bei den Lösungen fehlen die y-Achsenbeschriftungen für die Histogramme