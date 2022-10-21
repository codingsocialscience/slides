---
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
footer: 'Computational Thinking and Social Science | :copyright: Matti Nelimarkka | 2023 | Sage Publishing'
marp: true
---

<style>
footer {
  font-size: small;
}
</style>

![bg left:40% 80%](./cover.png)

# Chapter 8
# Best practices for software development in R

---

# Learning goals

* Summarise the benefits of using functions.
* Create functions for specific needs.
* Summarise the benefits of using libraries.
* Know how to search the libraries available to solve specific problems.
* Describe how to use a library by working with its documentation.
* Explain why code management is important for scientific software development.
* List the important good practices for software development.


---

# Don’t repeat yourself

A function takes input variables, executes code by subjecting them to specific operations, and produces an output.

![width:15cm](code-examples/chapter8_function_date_fix.png)

---

# Don’t repeat yourself

A function takes input variables, executes code by subjecting them to specific operations, and produces an output.

```R
fix_format <- function( text ) {
  text <- gsub( "D", ".", text )
  number <- as.numeric( text )
  return( number )
}
```


---

# Don’t repeat yourself

Function can be called from other code to execute it on the inputs and use the produced output.

![width:25cm](code-examples/chapter8_function_call.png)

---

# Don’t repeat yourself

Function can be called from other code to execute it on the inputs and use the produced output.

```R
data <- read.csv("broken_data.txt", header = F)

for( i in 1:nrow(data) ){
  salary = data[i, 1]
  months = data[i, 2]
  salary = fix_format( salary )
  months = fix_format( months )
  print( paste( "Annual salary is", salary * months ) )
}
```


---

# Don’t repeat yourself

Functions can be used for
1. dividing the problem for simpler sub-problems
1. abstracting common repetitive tasks into helper functions

---

# Learning activities

* Coding exercise: 8.1-8.5

---

# Don’t reinvent the wheel

* Libraries allow benefitting from other peoples’ work and put your effort into the actual problem.
* Libraries provide an application programming interface (API), which defines how the library can be used.
* An API comes with some documentation as well.
* In R, use the command `library()` to make libraries available for the code file.

---

#### Example 8.2 (partial): An API

```
degree

Degree and Degree Distribution for Vertices

The degree of a vertex is its most basic structural property,the number of its adjacent edges.

Usage

degree(
  graph,
  v = V(graph),
  mode = c(“all”, “out”, “in”, “total”),
  loops = TRUE,
  normalized = FALSE
)

Arguments
graph      The graph to analyse.
```

---

#### Example 8.3 (partial): An API

```
1.10.1. Classification

DecisionTreeClassifier is a class capable of performing multi-class classification on a dataset.

As with other classifiers, DecisionTreeClassifier takes as input two arrays: an array X,
sparse or dense, of size [n_samples, n_features] holding the training samples,
and an array Y of integer values, size [n_samples], holding the class labels
for the training samples:

from sklearn import tree
X = [[0, 0], [1, 1]]
Y = [0, 1]

clf = tree.DecisionTreeClassifier()
clf = clf.fit(X, Y)

After being fitted, the model can be used to predict the class of samples:
clf.predict([[2., 2.]])
```

---

# Learning activities

* Coding exercise 8.6-8.8

---

# Keep your code under control

* Treat code with respect, it is a vital tool for doing science.
* Leaving the code in such a shape that someone else – or ‘future you’, returning to it later – can read through it and understand what it does and the intended output.

---

# Keep your code under control

Clarity and coding style

* Unclear variable names and other identifiers make it considerably harder to understand what the software does.
* Up to 70% of code is identifiers
* Write full words
* Conceptual link clear on the identifier
* Formulate consistently: empty space has a meaning
* Bad code smells!

---

# Code smells

* Lengthy code
* Shotgun surgery
* The Swiss army knife
* Copy-paste

---

# Keep your code under control

Collaborative approaches

* Pair programming
* Code review

It is difficult to scope what the software should and should not do.
* Feature creep
* Extensive innovations
* Scheduling issues

---

# Review questions

1. What are the components of a function?
1. What are the two use cases for functions?
1. Can a function have more than one output value?
1. Why are libraries of help in software development?
1. Can the degree function addressed in Example 8.2 count both in- and out-degree values?
1. Can the degree function count the degree for only the selected nodes?

---

# Review questions

7. Why is code maintenance important for computational social science?
1. How does collaborative code development both improve and create challenges for code
writing?
1. What is a feature creep?
1. What are some examples of bad code smell?