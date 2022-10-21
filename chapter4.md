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

# Chapter 4
# Network analysis

---

# Learning goals

- Describe the differences between directed/non-directed, weighted/non-weighted and single-/multiple-layer networks
- Understand how a network paradigm can be used to analyse varied datasets, and identify application areas
- Describe and implement the algorithms to compute degree and betweenness metrics
- Understand potential issues that the algorithm’s parameters pose
- Be prepared to design novel approaches to networks, both conceptually and computationally

---

## A network

![width:20cm](figures/network_sample.png)

* Node (vertices): Objects we want to describe
* Ties (edges): A relationship connecting two objects

For example: Airports and direct connections.

---

## A network

![width:20cm](figures/network_weight.png)

**Weighted** networks have ties with numerical values connected to them to indicate weight.

For example: Travel time between airports

---

## A network

![width:20cm](figures/network_directed.png)

**Directed** networks have ties with arrows, indicating their direction.

For example: Routes which are one-way only

---

# What can be seen as a network?

* Social networks: humans as nodes and relationships between them as ties
* Networks as set of objects and their relationships (transportation, trade etc.)
* Textual content or other abstract idea perceived as a network

---

### Learning activity

* Pair or group discussion: Exercise 4.1
* Group discussion: Exercise 4.7

---

# Representations of networks

Graphical representation


![width:20cm](figures/network_small_sample.png)

---

# Representations of networks

An edge list

```
A <-> B
A <-> D
A <-> C
B <-> C
D <-> D
```

---

# Representations of networks

* An adjacency matrix

|   | A | B | C | D |
|---|---|---|---|---|
| A | 0 | 1 | 1 | 1 |
| B | 1 | 0 | 1 | 0 |
| C | 1 | 1 | 0 | 0 |
| D | 1 | 0 | 0 | 1 |

---

# Collecting network data

* Surveys and name generators
* Digital traces and sensors
* Non-social networks may require some transformation to be seen as nodes and ties
* Nodes and ties may have attributes

---

# Descriptive analysis

* Measuring networks
  * Focus on individual nodes and their position (e.g., degree, betweenness)
  * The network as a whole (e.g., number of nodes, density, diameter)

---

# Descriptive analysis: Degree

Degree measures how many ties each node has.
It is often used to understand questions such as "which nodes are most important" or "how connected nodes are within the network"

![bg left:40% 80%](code-examples/chapter4_degree.png)

---

# Descriptive analysis: Degree

Degree does not provide the most meaningful result in all networks.

![width:20cm](figures/network_degree_betweness.png)

---

# Visualising networks

Networks can be drawn in many ways, which give emphasis to some perspectives and de-emphasize others.

| Node | Tie | Position |
|---|---|---|
| Colour<br />Border colour<br />Size<br />Shape<br />Text inside| Colour<br />Width<br />Style (e.g., solid or dotted)<br />Text|  Distance between nodes<br />Position in the plot |

---

### Learning activity

* Individual activity: Exercise 4.2
* Group discussion: Exercise 4.3

---

# Structural properties

* Structural hole is created when there are two groups of nodes which are not connected.
* Bridges connect these structural holes.
* In social networks, triadic closure often takes place: if A knows B and A knows C, it is likely that B and C know each others.
* Some scholars prefer analysing triangular structures

---

# More advanced computation

* Community analysis allows to find groups from the network that are more closely connected with each other than the remaining network
  * Several approaches are available for this analysis, they may produce slightly different results
* Usually we cannot compare a network with other networks, as network data is difficult to collect
  * Random walk helps to examine network structure
  * Exponential random graph models allow statistical analysis

---

# Community detection

![bg contain](figures/network_clusters_modularity.png)
![bg contain](figures/network_clusters_edge.png)
![bg contain](figures/network_clusters_eigen.png)


---

# Review questions

1. What are three areas of application for network analysis?
1. For what kinds of network classes can network analysis be utilised?
1. Why do degree and betweenness centrality involve different kinds of measurement tools?
1. What types of choices does one face when drawing a network plot?
1. What is triadic closure?
1. Do different community-detection algorithms lead to the same outcomes?
1. Why is randomness a good tool for network analysis?