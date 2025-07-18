# 4-bit Kogge-Stone Adder (Verilog)

This repository contains a **Verilog implementation of a 4-bit Kogge-Stone Adder**, a fast parallel prefix carry look-ahead adder architecture. The design is implemented in **Verilog HDL**, with waveform simulation in **ModelSim** and power/block analysis via **Vivado**.

## Features

- 4-bit binary adder using the Kogge-Stone architecture
- High-speed carry computation using parallel prefix logic
- ModelSim used for functional simulation and waveform output
- Vivado used for:
  - Power analysis
  - Block diagram generation
- Includes testbench for simulation and verification

## Project Structure
```
├── kogge_stone_adder_4bit.v # Verilog source code
├── kogge_stone_adder_4bit_tb.v # Verilog testbench
├── waveform.png # Waveform output from ModelSim (main design)
├── tb_waveform.png # Waveform from testbench simulation
├── block_diagram.png # Generated from Vivado
├── power_report.pdf # Vivado power analysis report
├── README.md # Project documentation
```


## How It Works

The Kogge-Stone adder uses parallel prefix logic to compute carries in a logarithmic number of steps:

1. **Generate and Propagate Calculation**
   - Computes `G` and `P` values for each bit:  
     `G = A & B`  
     `P = A ^ B`

2. **Carry Tree Construction**
   - Combines `G` and `P` in a hierarchical prefix tree to calculate carries efficiently.

3. **Final Sum Computation**
   - Uses the carry-in and propagate signals to compute the final sum bits.

## Testbench

- A testbench (`kogge_stone_adder_4bit_tb.v`) is included to verify the correctness of the design.
- Simulates various input combinations and checks the sum and carry outputs.
- The waveform output from the testbench is saved as `tb_waveform.png`.

## Simulation & Analysis

- Functional Simulation: Verified in ModelSim  
- Waveforms: Included for both main design and testbench  
- Block Diagram: Generated using Vivado  
- Power Report: Synthesized and analyzed using Vivado power analysis

## Tools Used

- **ModelSim Altera Starter Edition 10.1e** – Simulation & waveform generation
- **Vivado** – Synthesis, block diagram, and power report
- **Verilog HDL** – Hardware description language
- **GitHub** – Version control and project hosting

## Resources

- `kogge_stone_adder_4bit.v` – Core HDL implementation
- `kogge_stone_adder_4bit_tb.v` – Verilog testbench
- `waveform.png` – Main design waveform (ModelSim)
- `tb_waveform.png` – Testbench waveform (ModelSim)
- `block_diagram.png` – Visual representation from Vivado
- `power_report.pdf` – Power consumption analysis

## Applications

- High-performance Arithmetic Logic Units (ALUs)
- Digital Signal Processors (DSPs)
- FPGA and ASIC-based systems
- Cryptographic engines

## Author

## Developed By 
- Tara Busaraddi
- Github : [TaraB287](https://github.com/TaraB287)
- LinkedIn : [tarabusarddi](https://www.linkedin.com/in/tarabusaraddi/)
