# UVM Config DB Exercises

This repository contains SystemVerilog and UVM source files covering beginner and moderate `uvm_config_db` exercises, focusing on passing configuration data between components, handling various data types (integers, strings, bits), error handling for incorrect keys, and managing hierarchical environment configurations based on **UVM Config DB Exercises**[cite: 9].

---

## 📂 Lab Exercises Overview

| Exercise # | Topic / Concept | Description |
| :--- | :--- | :--- |
| **1** | Change Value | Store `20` instead of `12` using `uvm_config_db` and retrieve/print it in the environment[cite: 9]. |
| **2** | Store Another Integer | Store an integer variable (`data = 10`), retrieve it, and print the value[cite: 9]. |
| **3** | Two Values | Store multiple configuration items (`data = 5`, `addr = 15`), retrieve both, and print them[cite: 9]. |
| **4** | String Value | Store a string value (`name = "UVM"`), retrieve it, and display the result[cite: 9]. |
| **5** | Bit Variable | Store a configuration bit variable (`enable = 1`), retrieve, and print it[cite: 9]. |
| **6** | Wrong Key Test | Store `data = 100` and attempt retrieval using an incorrect key to trigger a UVM error message[cite: 9]. |
| **11** | Test → Env → Driver Config | Pass a `packet_size` (64) hierarchically from `test` down to `env.driver` and verify retrieval[cite: 9]. |

---

## 🚀 Getting Started

### Prerequisites
A SystemVerilog-compatible simulator with UVM library support (such as ModelSim, Questa, VCS, or EDA Playground) is required to compile and execute these config database exercises[cite: 9].

### Compilation & Simulation
1. Compile the UVM package along with your target configuration test file (`+incdir+$UVM_HOME/src $UVM_HOME/src/uvm_pkg.sv`)[cite: 9].
2. Run the simulation to verify configuration database passing, type matching, and hierarchical scoping rules (`set()` before `get()`)[cite: 9].
```[cite: 9]
