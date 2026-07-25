# SystemVerilog & UVM Verification Assignments & Lab Portfolio

This repository contains a comprehensive collection of SystemVerilog and Universal Verification Methodology (UVM) source codes, verification plans, reporting exercises, and lab assignments covering core verification concepts, object-oriented programming (OOP), constraints, UVM field automation, config DB, and advanced testbench architectures.

---

## 📂 Repository Structure & Assignment Directory

| Module / Assignment | Description |
| :--- | :--- |
| **Assignment 01** | Basics of Verification: Arrays, queues, classes, methods, tasks/functions, clock synchronization, and deep copies[cite: 2]. |
| **Assignment 02** | Verification Planning Exercises: Complete verification plans, coverage points, and scoreboard strategies for 20 digital design blocks[cite: 3]. |
| **Assignment 03** | UVM Reporting Macros: Basic UVM reporting macros (`uvm_info`, `uvm_warning`, `uvm_error`, `uvm_fatal`), message IDs, verbosity, and conditional printing[cite: 4]. |
| **Assignment 04** | UVM Reporting Macro Timing Exercises: Advanced timed delays, periodic message generation, and scheduled severity checks[cite: 5]. |
| **Assignment 05** | UVM Object Randomization: Object creation, factory registration, constrained randomization, relational variables, and UVM printing mechanisms[cite: 6]. |
| **Assignment 06** | UVM Field Automation & Printers: Field automation macros (`uvm_field_int`), printer policies (table, tree, line), and format control (`UVM_BIN`, `UVM_DEC`, `UVM_HEX`)[cite: 7]. |
| **Assignment 07** | Field Macros (Enum, String, Real): Complex data types, enums, strings, real variables, nested hierarchical configurations, and custom peripherals[cite: 8]. |
| **Assignment 08** | UVM Config DB Exercises: Inter-component configuration passing using `uvm_config_db`, data types, error handling, and test-env-driver hierarchies[cite: 9]. |
| **SystemVerilog Labs** | Hands-on labs covering interfaces, master-slave blocks, transaction objects, runtime polymorphism, functional coverage, SVA assertions, and mailboxes[cite: 1, 4, 5, 6, 7, 8, 9]. |

---

## 🚀 Getting Started

### Prerequisites
* A SystemVerilog and UVM-compatible simulator (such as ModelSim, Questa, VCS, Xcelium, or EDA Playground) supporting object-oriented verification and UVM 1.2 class libraries[cite: 1, 2, 4, 5, 6, 7, 8, 9].

### Compilation & Simulation
1. Compile the UVM package (`+incdir+$UVM_HOME/src $UVM_HOME/src/uvm_pkg.sv`) alongside your target testbench or module files[cite: 4, 5, 6, 7, 8, 9].
2. Run the top-level test module to inspect simulation reports, coverage metrics, and printed object logs[cite: 1, 2, 4, 5, 6, 7, 8, 9].
```[cite: 1, 2, 3, 4, 5, 6, 7, 8, 9]
