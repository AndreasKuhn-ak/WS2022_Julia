### General:
remove output

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
-   [x]
9. The way the exercise was given, I would go for vcat, not append!. 
-   [vcat has not been introduced in the course]
10. Expand this exercise by comparing the result between array4_2=array4 and array4_2=array4[:] to make the difference of copies clear. Maybe even better, put it in the main part.
-  (I have sth about pass by reference and pass by value, later in the course. I think explicilty introducting this concept that early, would cause a lot of confusion)
18. this should be easy - it is in the lecture part
-  this is an easy exercise ? or 
15. solution: the dot is not needed because it is a vector
- changed it
19. solution: collect is not needed
- added two solutions, one with collect, one without it
21. As it stands, it should be easy - a possibility is in teh lecture part. Maybe modify to find two possibilities ... since one could use slicing or reverse()
- the reverse slicing is only used for strings in the lecture. I guess this transfer of knowledge justifies the medium difficulty. Anyways, i added another solution with reverse()
23. for the solution: 
longArray=vcat(array1,array2,array3,array4,array4_2,array5,array6)
count(3 .==longArray)
or 
count(i->(i==3),longArray) (I do not understand this syntax, but it is the first thing that comes up when using Google)
- i added the solution with vcat and a disclaimer, that hard exercises might require googling 