# SystemVerilog Assignment 01 - Basics of Verification

This repository contains SystemVerilog programs covering the fundamentals of verification, data types, arrays, queues, object-oriented programming (OOP) classes, tasks, functions, clock-synchronized stimulus generation, randomization, and constraints based on **Assignment-01: Basics of Verification**.

---

## 📂 Assignment Topics & Tasks Overview

| Task # | Topic / Concept | Description |
| :--- | :--- | :--- |
| **1** | Array Initialization | Initialize arrays using default, repetitive, and unique values[cite: 2]. |
| **2** | Fixed-Size Array | Create a fixed-size array and display its contents[cite: 2]. |
| **3** | Dynamic Array | Create a dynamic array, allocate memory dynamically, and display elements[cite: 2]. |
| **4** | Queues | Create a queue and perform push and pop operations[cite: 2]. |
| **5** | Classes & Methods | Create a class with three unsigned integers initialized to 45, 78, and 90, displaying them via a method[cite: 2]. |
| **6** | Functions & Self-Checking | Create a function to multiply two unsigned integers, verify against expected values, and print pass/fail[cite: 2]. |
| **7** | Clock-Synchronized Stimulus | Create a task generating stimulus for `addr` (6-bit), `wr` (1-bit), and `en` (1-bit) on a 25 MHz clock positive edge[cite: 2]. |
| **8** | Array Generation via Function | Create a function that generates 32 multiples of 8 (0 to 248), stores them locally, and displays values[cite: 2]. |
| **9** | Custom Constructors | Create a class with three 8-bit variables using a custom constructor verified with values 2, 4, and 56[cite: 2]. |
| **10** | Tasks with Arithmetic | Create a class with three 4-bit variables and a task to calculate sums, return results, and display inputs/outputs[cite: 2]. |
| **11** | Deep Copy Implementation | Create a deep copy method for a Generator class and verify identical values with unique memory locations[cite: 2]. |
| **12** | Randomization & Constraints | Create a class with 8-bit `addr` (16–63) and `data` (even values only), generating 20 randomized transactions[cite: 2]. |
| **13** | Inline Constraints | Apply inline constraints to generate addresses (100–150) and data values greater than 200[cite: 2]. |
| **14** | Pre/Post Randomization | Implement `pre_randomize()` and `post_randomize()` methods in a transaction class with display messages[cite: 2]. |

---

## 🚀 Getting Started

### Prerequisites
A SystemVerilog-compatible simulator (such as ModelSim, Questa, VCS, or EDA Playground) supporting object-oriented constructs, constraints, and randomization is required to execute these programs.

### Compilation & Simulation
1. Compile individual task files or your testbench wrapper in your simulator[cite: 2].
2. Run the simulation to verify behavioral outputs, self-checking mechanisms, and random transaction constraints[cite: 2].
```[cite: 2]
