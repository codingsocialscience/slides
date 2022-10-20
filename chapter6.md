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

# Chapter 6
# Simulations and Complex Systems

---

# Learning goals

- Understand how simulations are developed as simplifications of a complex phenomenon
- Describe the connection between simulation rules and algorithms
- Describe the differences between system-level simulation, microsimulations, and agent-based simulation
- Implement simple simulation models for code
- Identify potential research foci for various kinds of simulation models
- Describe the challenges of simulation models for research 

---

# Simulation

Simulation is running computationally calculating the outcomes of a world with pre-defined rules.

![width:7cm](figures/simulation_schelling_start.png) ![width:7cm](figures/simulation_schelling_end.png)

---

# Uses of simulation in social sciences

1. show a micro–macro-connection
1. allow for theoretical exploration
1. use policy- and future-oriented scenario work
1. study phenomena that could not be examined due to ethical or other reasons

---

# Thinking through simulations

Choices regarding the simulation depend on the research problem and its perspective.

1. What variables or phenomena are related to the research phenomenon?
1. Do these evolve over time?
1. What kinds of interactions exist between them?
1. Of these elements, which ones are the most relevant for describing the target phenomenon?

---

# Thinking through simulations

Simulation is formalisation:

* what are the settings
* what are actions and what rules they have
* who are the actors or agents

Computationally, a simulation process is simple. In many simulations, the focus is on temporal change. Thus, we let the ‘time’ flow in the simulation, execute the various rules, and update all of the variables influenced by those rules.

---

# Simulation requires simplification

* All models must be somehow limited, but some of them are still useful to answer the research question.
* System boundaries: too narrow and simplistic or too wide and complex?
* Many recommend to start from small and simple models and complicate them when needed.

---

In-class activity

Pair or group activity: Exercise 6.1

---

# System dynamics

System consists of stocks and flows between stocks.

![width:15cm](figures/systemdynamics.png)

---

# System dynamics

System consists of stocks and flows between stocks.

![width:30cm](code-examples/chapter6_system_dynamics.png)

---

# System dynamics

System consists of stocks and flows between stocks.

![width:30cm](code-examples/chapter6_system_dynamics.png)

---

# Agent-based simulations

Individual agents and the rules that specify their actions form the heart of agent-based simulation.

![width:15cm](code-examples/chapter6_schelling.png)


---

# Microsimulations

More tuned to various background-variables, but still working on the idea of flows.

![width:15cm](figures/simulation_population_microsimulation.png)

---

# Simulation models

|  | Systen dynamics  | Microsimulation | Agent-based simulation |
| - | - | - | - |
| Data driven | :heavy_check_mark: | :heavy_check_mark: | |
| Interaction part of model | | | :heavy_check_mark: |
| Detailed rules | | :heavy_check_mark: | :heavy_check_mark: |

---

# Simulation and research

* Code
  * There needs to be code to initialise and run the simulation
  * All parameters need to be determined
* Practices of simulation
  * Simple models first: thin and thick models
  * Run model several times if there is randomness
  * Explicate assumptions

---

In-class activities

* Small group activity: Exercise 6.3
* Individual activity: Exercise 6.4
* Small group activity: Exercise 6.7

---

# Complex systems (1)

* Emergence: Outcomes may be visible only higher in the system, not at the level of single units.
* Feedback: A phenomenon may feed back to itself, either weakening or self-reinforcing in response to its previous stage(s).
* Non-linearity: Change in a value could yield a clear effect, no visible effect at all, or something between the two. The relationship between inputs and outputs is non-linear.

---

# Complex systems (2)

* Adaptivity: Complex systems can learn from previous behaviours and adapt, whereby they may display new behaviour in response to new information.
* Multi-level and nested nature: Complex networks may have subsystems or components that are complex systems on their own.

---

In-class activities

* Class or pair discussion: Exercise 6.8

---

# Review questions (Simulations)

1. Why do simulation models require formal expression?
1. What are the differences between microsimulations and agent-based simulation?
1. In what ways have social scientists been using simulations?
1. How do thick and thin models differ?
1. What challenges limit the application of simulation models in the social sciences?

---

# Review questions (Complex systems)

6. What does emergence mean?
1. What is the connection between complex systems and simulation models?
