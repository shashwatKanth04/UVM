# UVM Reporting Macro Timing Exercises — Day-01 Advanced Exercises

This repository contains SystemVerilog and UVM source files for advanced timing exercises, covering scheduled UVM reporting macros, timed delays, periodic message generation, and conditional runtime checks based on **UVM Reporting Macro Timing Example — Day-01 Advanced Exercises**[cite: 5].

---

## 📂 Timing Exercises Overview

| Exercise # | Topic / Concept | Description |
| :--- | :--- | :--- |
| **1** | Scheduled Info & Warning | Print info message at 20 ns, warning at 40 ns, and stop simulation at 80 ns[cite: 5]. |
| **2** | Timed Warning, Error & Fatal | Print warning at 25 ns, error at 75 ns, and fatal at 150 ns[cite: 5]. |
| **3** | Sequential Info Messages | Print info messages sequentially at 10 ns, 20 ns, and 30 ns[cite: 5]. |
| **4** | Periodic Warning Generation | Print a warning message every 20 ns for a total of 5 iterations[cite: 5]. |
| **5** | Delayed Error Report | Print an error message after a `#100;` time delay[cite: 5]. |
| **6** | Staged Severity Lifecycle | Print info at 50 ns, warning at 100 ns, error at 150 ns, and fatal at 200 ns[cite: 5]. |
| **7** | Periodic Counter Display | Print a counter value every 10 ns from 1 to 5 using `uvm_info`[cite: 5]. |
| **8** | Conditional Threshold Checks | Generate a warning at 30 ns if temperature > 50, and an error at 60 ns if temperature > 80[cite: 5]. |
| **9** | Timestamp Checkpoints | Print the current simulation time at checkpoints: 25 ns, 50 ns, 75 ns, and 100 ns[cite: 5]. |
| **10** | Lifecycle State Machine Messages | Print startup (0 ns), processing (50 ns), completion (100 ns), and fatal stop (150 ns) messages[cite: 5]. |

---

## 🚀 Getting Started

### Prerequisites
A SystemVerilog-compatible simulator with UVM library support (such as ModelSim, Questa, VCS, or EDA Playground) is required to compile and execute these timing exercises.

### Compilation & Simulation
1. Compile the UVM library packages along with the selected exercise script (`+incdir+$UVM_HOME/src $UVM_HOME/src/uvm_pkg.sv`)[cite: 5].
2. Run the simulation to observe precise simulation time tracking and macro severity actions[cite: 5].
```[cite: 5]
