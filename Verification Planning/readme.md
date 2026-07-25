# SystemVerilog Assignment 02 - Verification Planning Exercises

This repository contains verification plans and documentation for 20 digital design exercises, covering testbench planning, feature identification, corner cases, functional coverage models, scoreboards, and assertions based on **Assignment-02: Verification Planning Exercises**.

---

## 📂 Verification Exercises Overview

| Exercise # | Design Subject | Key Verification Focus Areas |
| :--- | :--- | :--- |
| **1** | **8-bit Adder** | Features, directed tests, corner cases, coverage points, scoreboard, assertions, exit criteria[cite: 3]. |
| **2** | **8-bit Subtractor** | Borrow generation, underflow conditions, directed tests, corner cases, coverage, scoreboard[cite: 3]. |
| **3** | **4-bit Multiplier** | Multiplication functionality, max product conditions, directed tests, corner cases, coverage, reference model[cite: 3]. |
| **4** | **8-bit Comparator** | Equal, greater-than, less-than conditions, directed tests, corner cases, coverage, assertions[cite: 3]. |
| **5** | **4-to-1 Multiplexer** | Select line combinations, data routing, directed tests, corner cases, coverage model, assertions[cite: 3]. |
| **6** | **8-bit Encoder** | Valid encoding conditions, invalid inputs, corner cases, coverage points, checker strategy[cite: 3]. |
| **7** | **3-to-8 Decoder** | One-hot output conditions, invalid conditions, directed tests, coverage requirements[cite: 3]. |
| **8** | **8-bit Priority Encoder** | Priority handling, multiple active inputs, highest-priority selection, test scenarios, coverage[cite: 3]. |
| **9** | **8-bit Up Counter** | Reset operation, count increment, maximum count rollover, corner cases, coverage, assertions[cite: 3]. |
| **10** | **Up-Down Counter** | Up/down counting, mode switching, overflow/underflow, directed tests, corner cases, coverage[cite: 3]. |
| **11** | **Shift Register** | Left shift, right shift, reset operation, test scenarios, corner cases, functional coverage[cite: 3]. |
| **12** | **Ring Counter** | One-hot operation, rotation sequence, reset functionality, assertions, coverage model, corner cases[cite: 3]. |
| **13** | **Sequence Detector (1011)** | Mealy sequence detection, overlapping sequences, reset conditions, coverage plan, assertions[cite: 3]. |
| **14** | **Traffic Light Controller** | State transitions, timing constraints, illegal state recovery, corner cases, coverage, assertions[cite: 3]. |
| **15** | **Synchronous FIFO** | Write/read operations, full/empty conditions, simultaneous R/W, reference model, coverage, assertions[cite: 3]. |
| **16** | **ALU** | ADD, SUB, AND, OR, XOR, NOT operations, functional features, directed tests, corner cases, scoreboard[cite: 3]. |
| **17** | **Register File** | Read/write operations, simultaneous R/W, reset functionality, coverage model, assertions, corner cases[cite: 3]. |
| **18** | **Memory (RAM)** | Read/write cycles, consecutive accesses, boundary addresses, checker strategy, coverage points[cite: 3]. |
| **19** | **ALU with Flags** | Carry, Zero, Overflow, and Sign flag verification scenarios, corner cases, coverage requirements[cite: 3]. |
| **20** | **UART Transmitter** | Start bit generation, data transmission, stop bit, baud-rate operation, coverage, assertions, scoreboard[cite: 3]. |

---

## 🚀 Getting Started

### Prerequisites
These documents serve as formal verification planning templates and guidelines for implementing robust testbenches in SystemVerilog/UVM.

### Usage
1. Review the specific exercise verification plan to understand test objectives, stimulus requirements, and expected coverage metrics.
2. Develop corresponding verification components (testbenches, scoreboards, and assertion checkers) matching the outlined criteria.
```[cite: 3]
