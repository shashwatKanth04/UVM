# UVM Object Field Automation Assignments

This repository contains SystemVerilog and UVM source files covering 20 comprehensive exercises on UVM object field automation, custom enums, string properties, real/integer variables, hierarchical nested objects, printer policies, and constrained configurations based on **UVM Object Field Automation Assignments**[cite: 8].

---

## 📂 Lab Exercises Overview

| Exercise # | Topic / Concept | Description |
| :--- | :--- | :--- |
| **1** | ALU Operation Packet | Design a UVM object for an ALU with operation enums (`ADD`, `SUB`, `AND`, `OR`, `XOR`), version string, and table printer output[cite: 8]. |
| **2** | Traffic Light Controller | Create a configuration object for a traffic light controller storing state enums, junction names, and green-light durations[cite: 8]. |
| **3** | D Flip-Flop Configuration | Store D Flip-Flop names, setup times, and hold times as real variables, registering and printing all fields[cite: 8]. |
| **4** | Multiplexer Family | Design a configuration object for multiplexers (`2:1`, `4:1`, `8:1`, `16:1`) with propagation delays[cite: 8]. |
| **5** | UART Configuration | Create a UART configuration object with parity enums (`NONE`, `EVEN`, `ODD`), baud rates (real), and instance names[cite: 8]. |
| **6** | Sequence Detector | Represent a sequence detector object with detected sequence enums (`1010`, `1101`, `1110`), names, and detection latency[cite: 8]. |
| **7** | FSM Controller | Create a UVM object representing an FSM using state enums (`IDLE`, `FETCH`, `DECODE`, `EXECUTE`) printed via tree printer[cite: 8]. |
| **8** | Clock Divider | Configure clock dividers with ratio enums (`÷2`, `÷4`, `÷8`, `÷16`) and input clock frequencies[cite: 8]. |
| **9** | ADC Configuration | Design a UVM object for an ADC with resolution enums, reference voltages, and model numbers[cite: 8]. |
| **10** | FIFO Status Monitor | Create a FIFO status object using status enums (`EMPTY`, `PARTIAL`, `FULL`, `OVERFLOW`) and FIFO names[cite: 8]. |
| **11** | Printer Comparison | Compare table, tree, and line printer outputs using any created UVM object[cite: 8]. |
| **12** | Hide Sensitive Information | Use `UVM_NOPRINT` to hide specific fields (e.g., version numbers or delays) from testbench reports[cite: 8]. |
| **13** | Binary Representation | Display integer fields using custom formatting options like binary and hexadecimal[cite: 8]. |
| **14** | Multiple DUT Configurations | Create, independently randomize, and print three distinct DUT configuration objects[cite: 8]. |
| **15** | Register New Fields | Extend an existing object to incorporate design version strings, operating temperatures, and revision integers[cite: 8]. |
| **16** | Constraint-Based Configuration | Apply constraints to generate specific enum subsets within FSM or counter configurations[cite: 8]. |
| **17** | Manual vs. Automatic Printing | Contrast manual `uvm_info()` logging against automated `print()` method calls[cite: 8]. |
| **18** | Design Your Own Peripheral | Build custom peripheral configurations (e.g., Timers, PWM Generators) using enums, strings, and real variables[cite: 8]. |
| **19** | Nested Configuration | Nest `clock_cfg` inside `uart_cfg` using appropriate object field macros to observe hierarchical outputs[cite: 8]. |
| **20** | Complete DUT Configuration | Design comprehensive configurations for advanced sequential/combinational blocks (e.g., Booth Multiplier, Barrel Shifter)[cite: 8]. |

---

## 🚀 Getting Started

### Prerequisites
A SystemVerilog-compatible simulator with UVM library support (such as ModelSim, Questa, VCS, or EDA Playground) is required to compile and execute these exercises[cite: 8].

### Compilation & Simulation
1. Compile the UVM package along with your target exercise file (`+incdir+$UVM_HOME/src $UVM_HOME/src/uvm_pkg.sv`)[cite: 8].
2. Run the simulation to examine field automation macros, hierarchical nesting, and policy outputs[cite: 8].
```[cite: 8]
