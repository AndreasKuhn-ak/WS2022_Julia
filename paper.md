---
title: 'Scientific programming in Julia - An introductory course'
tags:
  - Julia
  - course
  - beginners
  - plotting
  - data analysis
  - agent based model
authors:
  - name: Andreas Kuhn 
    orcid: 0000-0001-8146-2095
    affiliation: 1
  - name: Sabine C. Fischer
    orchid: 0000-0001-7237-814X
    affiliation: 1
affiliations:
 - name: Center for Computational and Theoretical Biology , University of Würzburg
   index: 1

date: 26/05/23
bibliography: paper.bib

pandoc_args: ["--toc", "--toc-depth=2",]
output: pdf_document
---





# Summary
This course provides an introduction into the scientific programming language `Julia`. No previous knowledge is necessary to follow the nine course lectures. Every lecture is presented in Jupyter Notebooks. Code examples are shown together with markdown cells explaining and elaborating on the code. Additionally, general concepts about programming in `Julia` are introduced. The lectures build on each other and should be finished in numerical order. The first five lectures cover the basic language syntax of `Julia` (e.g. data types, operators, package installation, functions, ...). The last four lectures are more specifically targeted towards scientific applications and cover the following topics: plotting, import/export of numerical data, data analysis and a simple agent-based simulation. Each lecture ends with exercises, where the students directly apply the concepts that have been introduced. Sample solutions for all exercises are provided. 


# Statement of Need 

The `Julia` programming language first appeared in 2012 [@bezanson_julia_2012] and had been specifically designed for numerical computation and data science. Since then, the combination of speed and interactivity distinguishes `Julia` from other languages in that realm. Over the years, it has undergone a rapidly growing adaptation to various fields of science, ranging from black holes [@fernandes_new_2022] to quantum systems [@gawron_quantuminformationjljulia_2018; @kramer_quantumopticsjl_2018] in physics to applications in biology [@roesch_julia_2021; @knopp_mrirecojl_2021], economics [@coleman_matlab_2021], machine learning [@gao_julia_2020] and many more. This fast acceptance of a new programming language is quite remarkable, as programming languages are a field that is historically known to be very slow at pivoting (e.g. ``Python`` and ``C++`` are both over 30 years old). 
 
One reason for this is that ``Julia`` solves the two language problem [@perkel_julia_2019] that has been tormenting many researchers for decades. It essentially means, that different specialized languages are used for different tasks in the same project. To give an example, ``Python`` or ``Matlab`` are often used for plotting and fast prototyping, ``R`` for statistical analyses and compiled languages like ``C/++`` or ``Fortran`` for the computationally heavy parts. Using two or more languages in one project creates a lot of unnecessary overhead: Firstly, researcher have to spend more time learning to code in two languages (especially true for low level languages like ``C/++`` or ``Fortran``), and secondly, exchanging data and logic between languages can be very tedious and time-consuming.    

Julia solves this problem, as all the mentioned tasks can be accomplished in Julia alone. Its simple syntax is heavily inspired by Python, which allows equally fast prototyping [@andreaskuhn_how_2022]. The plotting package ``Makie`` [@DanischKrumbiegel2021] provides similar capabilities as ``matplotlib`` in ``Python`` or ``ggplot2`` in ``R``. The meta package ``StatsKit`` includes all necessary tools to do sophisticated statistical analysis. And most importantly, ``Julia`` is fast. Depending on the benchmark, ``Julia`` is on pair or within a factor of 2 to ``C`` [@al_julia_nodate; @churavy_bridging_2022]. 


![](Julia_all_new.png)



## Target audience 
The main target audience of this course is scientists/students who want to use or already use programming in their work. However, no prerequisites apart from basic algebra and statistics (high school level) are needed. Anybody with that requirement should be able to follow the course without problems.

Intermediate Programmers who already have experience in other languages should be able to finish the first five lessons quite fast, as a lot of general programming concepts are introduced there as well. But the last four more `Julia` specific lessons should be very useful for them, too.

Advanced Programmers who are interested in `Julia` should solely focus on the parts of the last four `Julia` specific lessons that are of interest to them.  

Even though there are already free Julia courses available online ([1](https://carpentries-incubator.github.io/julia-novice/),[2](https://www.datacamp.com/courses/introduction-to-julia),[3](https://juliaacademy.com/courses)), we believe, that this course offers great additional value for (new) scientific programmers, as it does not require any prior knowledge, is self-contained with chapters that build up on one another, introduces many relevant topics for scientific applications and offers exercises together with solutions to each chapter. 

Therefore, we invite everybody to either use the course materials in independent self study to learn `Julia` or to use the course materials to teach Julia to others. 


# Details of the course


## Learning objectives 
The learning resource aims to enable learners to:

* use interactive notebooks 
* understand the basic structure of the `Julia` programming language
* use Julia in a scientifc context:
    * import/export data
    * analyse data
    * plot data
    * write a simple simulation
  


## Content
1. Jupyter Notebooks
2. Package Installation
3. Datatypes
4. Conditional Iterators
5. Functions
6. Plotting
7. Import/Export 
8. Data Analysis
9. Application: Simple Random Walk Simulation 


## Instructional design
The Jupyter notebooks contain four different types of cells: 
- General explanations
- Executable code examples
- Exercises
- Meta comments/hints/notes

The first three cell types are essential in understanding the contents of the course. The exercises are divided into three difficulties: easy, medium and hard. Easy and medium exercises can be solved using the content of the course alone, whereas some hard exercises require additional research to transfer the acquired knowledge to new problems.  The "meta" cells offer additional but non-essential information. This can be comments about the differences of `Julia` compared to other languages, advice on good coding practices, etc. While first time programmers can skip these cells if they want to, we expect the meta cells to be particularly useful for already experienced programmers switching to `Julia`.



# Experience of use
We started using `Julia` in our own work out of frustration with the execution speed of raw Python. The choice of `Julia` over other compiled and fast languages like C/++, FORTRAN or Rust was easy for us because ``Julia`` allowed us to keep the familiar and convenient interactive development workflow that Python established. 

During the transition, we also had to learn `Julia` from scratch. And what is the best way to learn something new? Right, teaching it. Therefore, we developed this course to educate ourselves and new members of our group on ``Julia``. Since the beginning of 2022, fifteen undergrad and master students have completed the material as a self-study course. Furthermore, we have been providing the course material on our website as a free download since March 2022. The feedback was used to iteratively improve the course. 

We believe that the course has reached a level of maturity so that it offers great value to everybody who wants to learn or teach `Julia`. We are convinced that the course could be readily taught  as part of an undergraduate or graduate program. A suitable format would be a block course where, in the morning, there is a teaching block of one or two lessons (depending on the size), and in the afternoon, students work alone or in groups on the exercises. In the evening or the next day, there could be a session where the solutions to the exercises are presented, and any questions regarding the exercises are answered. 

Therefore, we invite everybody to either use the course materials in independent self study to learn `Julia` or to use the course materials to teach `Julia` to others. 



## Acknowledgements

We acknowledge the  contributions from Simon Schardt, Christopher Nauroth-Kreß, Alexander Leipold, Kilan Volmer and the various other students who served as beta testers and proof readers for this course. 




## References

