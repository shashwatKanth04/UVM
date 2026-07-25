# UVM Object Randomization Lab Assignments

This repository contains SystemVerilog and UVM source files covering 10 object randomization exercises, focusing on UVM object creation, factory registration (`uvm_object_utils`), constrained randomization, relational variable constraints, UVM printing mechanisms, and multi-object generation based on **UVM Object Randomization**[cite: 6].

---

## 📂 Lab Exercises Overview

| Exercise # | Topic / Concept | Description |
| :--- | :--- | :--- |
| **1** | Even Number Generator | Apply constraints on a 4-bit random variable `a` to generate only even numbers over 10 iterations[cite: 6]. |
| **2** | Range Constraint | Generate values strictly between 5 and 10 using range constraints[cite: 6]. |
| **3** | Two Variables with Relationship | Add a second random variable `b` with a relational constraint ensuring `a < b`[cite: 6]. |
| **4** | Odd Number Generator | Apply constraints to generate only odd numbers across multiple randomizations[cite: 6]. |
| **5** | Sum Constraint | Define multiple random variables (`a` and `b`) with an equality sum constraint (`a + b == 10`)[cite: 6]. |
| **6** | Greater Than Constraint | Constrain variable `a` to produce values strictly greater than 8[cite: 6]. |
| **7** | Random Packet Object | Create a packet object with 8-bit `addr` and `data` fields and randomize both[cite: 6]. |
| **8** | Address Range Constraint | Constrain packet addresses within a specific set range (`addr inside {[16:31]}`)[cite: 6]. |
| **9** | UVM Object Printing | Implement UVM's built-in object printing mechanism by overriding `do_print()` and using `obj.print()`[cite: 6]. |
| **10** | Multiple Object Creation | Create, independently randomize, and display values for multiple distinct object instances (`o1`, `o2`, `o3`)[cite: 6]. |

---

## 🚀 Getting Started

### Prerequisites
A SystemVerilog-compatible simulator with UVM library support (such as ModelSim, Questa, VCS, or EDA Playground) is required to compile and execute these exercises[cite: 6].

### Compilation & Simulation
1. Compile the UVM package (`uvm_pkg.sv`) along with your target exercise file[cite: 6].
2. Run the simulation to view the randomized property outputs and UVM printing logs[cite: 6].
```[cite: 6]
