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


## Summary
This course provides an introduction into the scientific programming language ``Julia``. No previous knowledge is necessary to follow the nine course lectures. Every lecture contains one Jupyter Notebook, where executable code examples are shown together with specific and general explanations about their applications. The first 5 lectures cover the basic language syntax of ``Julia`` and Jupyter Notebooks (e.g. data types, package installation, functions, ...). The last 4 lectures are more targeted towards scientific applications and cover topics like plotting, data import/export, data analysis and a simple agent based simulation. Each lecture ends with exercises which directly apply the learned concepts. The exercises are divided into three difficulties: easy, medium and hard. Easy and medium excises can be solved using the contents of the course alone, whereas some hard exercises require additional research, to transfer the acquired knowledge to new problems. Sample solutions for all exercises are provided. After the course is finished, one is equipped with all the necessary tools to start scientific programming in ``Julia``.        


## Statement of Need 

 The ``Julia`` programming language first appeared in 2012 [@bezanson_julia_2012] and has been designed specifically for scientific computation and data analysis. Since then, it has seen a rapidly growing adaptation in various fields of science. Ranging from black holes [@fernandes_new_2022] to quantum systems [@gawron_quantuminformationjljulia_2018; @kramer_quantumopticsjl_2018] in physics to applications in biology [@roesch_julia_2021; @knopp_mrirecojl_2021], economics [@coleman_matlab_2021], machine learning [@gao_julia_2020] and many more. This fast acceptance of a new programming language is quite remarkable, as programming languages are a field that is historically known to be very slow at pivoting (e.g. ``Python`` and ``C++`` are both over 30 years old). 
 
One reason for this, is that ``Julia`` solves the so-called two language problem [@perkel_julia_2019], that has been tormenting researcher for decades: The classical workflow of a computational scientist often involves using two or more languages for different tasks. For example, ``Python`` or ``Matlab`` is used for fast prototyping and plotting, ``R`` for statistical analysis and a compiled language like ``C/++`` or ``Fortran`` for computational expensive simulations. Using different languages creates a lot of unnecessary overhead: Firstly, researcher have to spend more time learning to code (which is especially true for ``C/++`` or ``Fortran``) and secondly, exchanging data & logic between languages can be very tedious and time-consuming.    

Julia solves this problem, as all the mentioned tasks can be accomplished in Julia alone. Its syntax is very simple and heavily inspired by Matlab and Python, which allows fast prototyping[@andreaskuhn_how_2022]. The plotting package ``Makie`` provides similar capabilities as ``matplotlib`` in ``Python`` or ``ggplot2`` in ``R``. The meta package ``StatsKit`` includes all necessary tools to do sophisticated statistical analysis. And most importantly, ``Julia`` is fast. Depending on the benchmark, ``Julia`` is on pair or within a factor of 2 to ``C`` [@al_julia_nodate; @churavy_bridging_2022]. 

Therefore, there is no better time than now to start learning Julia and to get to know all the amazing packages mentioned above. 
This course... 




## Figures

Figures can be included like this: ![Example figure.](figure.png)

## Acknowledgements

We acknowledge contributions from Simon Schardt, Christopher Nauroth-Kreß and the various students who served as beta testers for this course. 
## References