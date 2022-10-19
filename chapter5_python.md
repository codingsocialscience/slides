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

# Chapter 5
# Data structures

---

# Learning goals

* Identify the differences among variables, lists, and dictionaries
* Be able to add items to lists and dictionaries, and remove them
* Use for statements with lists and dictionaries
* Simplify problem solving using listsand dictionaries as abstractions
* Examine the computational complexity of an algorithm 
* Evaluate whether solving a given problem computationally is feasible through back-of-envelope calculations.



---

# List

![bg left:30% contain](figures/datastructure_variables_list.png)

Lists allow storing several values in one variable.

Each value is stored in a pre-defined index.

![height:7cm](figures/datastructure_variables.png)

---

# List

![bg left:30% contain](figures/datastructures_list_index.png)

Lists can

* add new values to it
* remove old values from it
* recall or change values on it
* go through all values stored on it

Lists are _indexed_.

---

# List

![bg left:30% contain](figures/datastructures_list_index.png)

```Python
names_list = [ 'Cat', 'Dog', 3.1415, 'Pie' ]

for name in names_list:
  print( "Say hello to", name )
  print( name, "says: Hi." )
````

![width:10cm](code-examples/chapter5_list_for.png)

---

# List

![bg left:30% contain](figures/datastructures_list_index.png)

List help with

1. conducting the same operation to various variables
1. cleaning and making the code more readable
1. storing unknown number of variables
1. working on data which is indexed

---

## Conducting same operations

![bg left:30% contain](figures/datastructures_list_index.png)

![width:15cm](code-examples/chapter5_list_perform_operation.png)

---

## Cleaning code

![bg left:30% contain](figures/datastructures_list_index.png)

![width:17cm](code-examples/chapter5_list_clarify_code.png)

---

## Storing unknown number of items

![bg left:30% contain](figures/datastructures_list_index.png)

![width:15cm](code-examples/chapter5_list_unique_word.png)

---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

Dictionaries store key, value pairs.
It is easy to access the value by a given key.

![height:7cm](figures/datastructure_variables.png)

---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

Dictionaries can

* add new values to it
* remove old values from it
* recall or change values on it
* go through all values stored on it

Dictionaries have _keys_ and corresponding _values_.

---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

![width:15cm](code-examples/chapter5_dictionary_for.png)


---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

Remember to manage cases where a key does not have a corresponding value.

![width:15cm](code-examples/chapter5_zipcodes.png)

---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

1. maintaining a static mapping between two related ideas
1. serving as a meta variable, such as gatherer when there are several different cases

---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

![width:15cm](code-examples/chapter5_roughlate.png)

---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

![width:15cm](code-examples/chapter5_mega_gatherer.png)

---

# Dictionary

![bg left:30% contain](figures/datastructure_variables_dictionary.png)

![width:15cm](code-examples/chapter5_mega_mostwanted.png)

---

# The limits of computing

![bg contain](code-examples/chapter5_image_comparison_bad.png)
![bg contain](code-examples/chapter5_image_comparison_better.png)

---

# The limits of computing

* Computing resources are limited: there are time and memory constrains that impact how we solve a problem.
* As the number of items in the list grows, it takes more and more
time to go through the entire list through.
* $\mathcal{O}$ measures the order of growth, algorithm’s resource requirements in relation to input size (often $n$).
* Analysis is simplified to the highest polynomial only, as it is the only significant factor when $n$ is high. 

---

# Addressing the limits of computing

* Code optimisations: choosing better data structures, examining if approaches can be improved
* Profiling code: examining where code bottlenecks are and improving them specially

---

# Review questions

1. What operations does a list involve?
1. What operations does a dictionary perform and allow?
1. What are the similarities and differences between lists and dictionaries?
1. In what circumstances do you need dynamic data structures?
1. In what kinds of cases would you use these data structures for working with networks?
1. In which types of cases would you use them for analysing data algorithmically?

---

# Review questions

7. In what cases should you pay attention to the algorithmic complexity of code?
1. List the following levels of algorithmic complexity in order from lowest to highest: $\mathcal{O}(n2)$, $\mathcal{O}(n)$, $\mathcal{O}(2n)$, $$\mathcal{O}(1)$.
1. Go through five pieces of example code and estimate their algorithmic complexity.
1.  Write pseudocode that has $\mathcal{O}(n)$ complexity and a piece of pseudocode that has $\mathcal{O}(n3)$.

