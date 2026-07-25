# UVM Reporting Macros — Day-02 Lab Exercises

This repository contains SystemVerilog and UVM source files covering 20 reporting macro exercises, including info, warning, error, and fatal messages, verbosity levels, message IDs, formatting values, and conditional reporting based on **UVM Reporting Macros — Day-02 Lab Exercises**[cite: 4].

---

## 📂 Lab Exercises Overview

| Exercise # | Topic / Concept | Description |
| :--- | :--- | :--- |
| **1** | Simple Info Message | Print `"Hello UVM"` using `uvm_info`[cite: 4]. |
| **2** | Simple Warning Message | Print `"Temperature High"` using `uvm_warning`[cite: 4]. |
| **3** | Simple Error Message | Print `"Invalid Data"` using `uvm_error`[cite: 4]. |
| **4** | Simple Fatal Message | Print `"Simulation Stopped"` using `uvm_fatal`[cite: 4]. |
| **5** | Message ID Usage | Use message ID `"TEST1"` with `uvm_info`[cite: 4]. |
| **6** | Multiple Info Messages | Print three different info messages sequentially[cite: 4]. |
| **7** | Using Verbosity | Print info message using `UVM_LOW` verbosity[cite: 4]. |
| **8** | Print Integer Value | Declare an integer variable and print its value using `$sformatf()`[cite: 4]. |
| **9** | Print Two Variables | Declare two integer variables and print both values in a single message[cite: 4]. |
| **10** | Loop Printing | Use a loop from 1 to 5 and print the loop counter using `uvm_info`[cite: 4]. |
| **11** | Simulation Time | Print the current simulation time using `$time`[cite: 4]. |
| **12** | Delay and Reporting | Print a message after a `#10;` time delay[cite: 4]. |
| **13** | Repeated Printing | Print the same message 5 times using a loop[cite: 4]. |
| **14** | Even Number Detection | Check whether a number is even and print `"Even Number"`[cite: 4]. |
| **15** | Odd Number Warning | Check whether a number is odd and print a warning message[cite: 4]. |
| **16** | Positive Number Check | If a number > 0, print `"Positive Number"`[cite: 4]. |
| **17** | Negative Number Error | If a number < 0, print an error message[cite: 4]. |
| **18** | Print Student Information | Print Name, Roll Number, and Branch using reporting macros[cite: 4]. |
| **19** | Counter Display | Increment a counter from 0 to 3 and print its value[cite: 4]. |
| **20** | All Macros Together | Demonstrate `uvm_info`, `uvm_warning`, `uvm_error`, and `uvm_fatal` in a single program[cite: 4]. |

---

## 🚀 Getting Started

### Prerequisites
A SystemVerilog-compatible simulator with UVM library support (such as ModelSim, Questa, VCS, or EDA Playground) is required to compile and execute these testbenches.

### Compilation & Simulation
1. Compile the UVM files and your target exercise script together with the UVM package (`+incdir+$UVM_HOME/src $UVM_HOME/src/uvm_pkg.sv`).
2. Run the simulation to observe the structured reporting output and message severities.
```[cite: 4]
