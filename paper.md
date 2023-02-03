---
title: 'Computational Science in Julia - An introduction course into the Julia programming language '
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

date: 23/01/23
bibliography: paper.bib

pandoc_args: ["--toc", "--toc-depth=2",]
output: pdf_document
---


# Computational Science in Julia - An introduction course into the Julia programming language

# Scientific programming in Julia - An introductory course


## Summary
This course provides an introduction into the scientific programming language ``Julia``. No previous knowledge is necessary to follow the nine course lectures. Every lecture contains one Jupyter Notebook, where executable code examples are shown together with general and specific explanations about their applications. The first five lectures cover the basic language syntax of ``Julia`` and Jupyter Notebooks (e.g. data types, package installation, functions, ...). The last four lectures are targeted towards scientific applications and cover topics like plotting, data import/export, data analysis and a simple agent-based simulation. Each lecture ends with exercises, which directly apply the learned concepts. The exercises are divided into three difficulties: easy, medium and hard. Easy and medium exercises can be solved using the content of the course alone, whereas some hard exercises require additional research, to transfer the acquired knowledge to new problems. Sample solutions for all exercises are provided. After the course is finished, one is equipped with all the necessary tools to start scientific programming in ``Julia``.        


## Statement of Need 

 The ``Julia`` programming language first appeared in 2012 [@bezanson_julia_2012] and has been designed specifically for scientific computation and data analysis. Since then, it has seen a rapidly growing adaptation in various fields of science. Ranging from black holes [@fernandes_new_2022] to quantum systems [@gawron_quantuminformationjljulia_2018; @kramer_quantumopticsjl_2018] in physics to applications in biology [@roesch_julia_2021; @knopp_mrirecojl_2021], economics [@coleman_matlab_2021], machine learning [@gao_julia_2020] and many more. This fast acceptance of a new programming language is quite remarkable, as programming languages are a field that is historically known to be very slow at pivoting (e.g. ``Python`` and ``C++`` are both over 30 years old). 
 
One reason for this is that ``Julia`` solves the two language problem [@perkel_julia_2019] that has been tormenting researcher for decades: The classical workflow of a computational scientist often involves using two or more languages for different tasks. For example, ``Python`` or ``Matlab`` are used for fast prototyping and plotting, ``R`` for statistical analyses and a compiled language like ``C/++`` or ``Fortran`` for computationally expensive simulations. Using different languages creates a lot of unnecessary overhead: Firstly, researcher have to spend more time learning to code in two languages (which is especially true for ``C/++`` or ``Fortran``) and secondly, exchanging data and logic between languages can be very tedious and time-consuming.    

Julia solves this problem, as all the mentioned tasks can be accomplished in Julia alone. Its syntax is very simple and heavily inspired by Matlab and Python, which allows fast prototyping [@andreaskuhn_how_2022]. The plotting package ``Makie`` [@DanischKrumbiegel2021] provides similar capabilities as ``matplotlib`` in ``Python`` or ``ggplot2`` in ``R``. The meta package ``StatsKit`` includes all necessary tools to do sophisticated statistical analysis. And most importantly, ``Julia`` is fast. Depending on the benchmark, ``Julia`` is on pair or within a factor of 2 to ``C`` [@al_julia_nodate; @churavy_bridging_2022]. 

![](https://i.imgur.com/5THwyPd.png)

<span style="color:red">"One language to rule them all ist mir etwas zu viel. Bei Mathematica fällt mir z.B. direkt ein, dass das ja entstanden ist um symbolisch zu rechnen. Geht das mit Julia schon? Wenn ja, solltest du das oben im Text noch erwähnen. </span>

Therefore, there is no better time than now to start learning Julia and to get familiar with its amazing package ecosystem and superior speed. 

Eventhough there are already free Julia courses available online ([1](https://carpentries-incubator.github.io/julia-novice/),[2](https://www.datacamp.com/courses/introduction-to-julia),[3](https://juliaacademy.com/courses)), we believe, that this course offers the most complete package for (new) scientific programmers. This is due to the facts that the course does not require any prior knowledge, is completely self-contained, introduces all relevant topics in scientifc programming <span style="color:red">Sind wir uns da ganz sicher, dass es *alle* sind? Besser etwas abschwächen.</span> and offers training exercises with solutions to each topic. 


## Details of the course


### Target audicence
The main target audience of this course are scientists who want or are already using programming in their work. But no prerequisites are needed, therefore anybody can follow the course without problems. 

Programmers who already have experience in other languages should be able to finish the first five lession quite fast, as a lot of gerneral programming concepts are introduced there as well. But the last four more `Julia` specifc lessons should be very useful for them nevertherless.


### Learning objectives 
The learning resource aims to enable learners to:

* use interactive notebooks 
* understand the basic structure of a programming language
* use Julia in a scientifc context:
    * import/export data
    * analyse data
    * plot data


### Content
1. Jupyter Notebooks
2. Package Installation
3. Datatypes
4. Conditional Iterators
5. Functions
6. Plotting
7. Import/Export 
8. Data Analysis
9. Application: Simple Random Walk Simulation 



### Instructional design
The Jupyter notebooks contain four different types of cells: 
- General explanations
- Executable code examples
- Exercises
- Meta comments/hints/notes

The first three cell types are essential in understanding the contents of the course. The "meta" cells offer additional but non essential information. These, can be comments about the differences of Julia compared to other languages, advice on good coding practices,... . Whereas first time programmers can skip these cells if they want to, we expect the meta cells to be particularly useful for already experienced programmers switching to ``Julia``.


## Experience of use
We started using Julia in our own work out of frustation of the execution speed of raw Python. The choice of Julia compared to other compiled and fast languages like C/++, Fortran or Rust was easy, as Julia allowed us to keep the familar and convenient interactive development workflow that Python estabilshed. 

During the switch, we also had to learn Julia from ground up. And what is the best way to learn something new? Right, by teaching it. Therefore, we developed this course with the original purpose to educate ourselves and new members of our team on Julia. Since the begining of 2022, seven other people have completed the material as a self-study course. Furthermore, we have been providing the course material on our website as a free [download](https://www.biozentrum.uni-wuerzburg.de/cctb/research/supramolecular-and-cellular-simulations/) since March 2022. The feedback was used to iteratively improve the course over time. 

We believe that the course has reached a level of maturity and that it offers great value to everybody who wants to learn Julia. Next, we plan to host a training workshop in a research consortium. In addition, we are convinced that the course could be readily taught in a weekly manner as part of an undergraduate or graduate programme. Therefore, we invite everybody to use the course independently to learn or to teach Julia. 

## Get started -> later only in readme
To run the course material on your local machine, either clone this [github repository]( https://github.com/AndreasKuhn-ak/WS2022_Julia) or download the course files from our [website](https://www.biozentrum.uni-wuerzburg.de/cctb/research/supramolecular-and-cellular-simulations/)<span style="color:red">meinst du es ist sinnvoll beides so zu behalten? oder sollten wir auf der Webseite nicht lieber das git Repo verlinken? </span>. The repository contains a file called "Julia_course_manual.pdf" which lists the required software. 

For a first experience without any prior installation, you can also use [mybinder](https://mybinder.org/v2/gh/AndreasKuhn-ak/WS2022_Julia/HEAD) to directly execute the Jupyter nootebooks in your browser <span style="color:red"> note, that sometimes limited server capacity </span>. But keep in mind, that your changes will only be saved temporarily <span style="color:red">man kann aber die Notebooks runterladen, dann hat man die changes </span> and the GPU accelerated plotting in the ninth part will not work due to mybinder limititations.   


## Figures

Figures can be included like this: ![Example figure.](figure.png)
<span style="color:red">*es wäre schön, wenn wir eine Abbildung hätten, weil das Dinge immer ansprechende macht, finde ich* </span>

## <span style="color:red">To Dos:</span>
*  https://openjournals.readthedocs.io/en/jose/review_checklist.html Wir müssen sicher gehen, dass wir diese Aspekte alle abdecken
* target audience 
* https://jose.theoj.org/papers/10.21105/jose.00156 Artikel mit sehr ähnlichem Thema 
* github repo mit documentation die das hier beinhaltet: https://jose.theoj.org/papers/10.21105/jose.00156
* Kurs Korretur lesen, damit keine (möglichst wenige) Typos drin sind
* sie betonen überall immer, dass sie gerne die Geschichte des Kurses im ARtikel lesen möchten - das sollte also irgendwo mit drin sein
* adaptation from others
* <span style="color:red">comunity notes: Anpassungen von anderen -> readme</span>



## Acknowledgements

We acknowledge contributions from Simon Schardt, Christopher Nauroth-Kreß, Alexnder Leipold and the various students who served as beta testers for this course. 

## Comments: 



## References

