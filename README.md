# 4-to-2 Priority Encoder (Verilog)

This project implements a 4-to-2 priority encoder using Verilog HDL. It includes a testbench for simulation and demonstrates waveform analysis using EDA Playground.

## Tools Used

- Icarus Verilog (`iverilog`) for compilation and simulation
- EDA Playground for waveform viewing (EPWave)
- Visual Studio Code for development

## File Structure

| File Name              | Description                        |
|------------------------|------------------------------------|
| `encoder_4to2.v`       | Verilog module for the priority encoder |
| `tb_encoder_4to2.v`    | Testbench for simulation            |
| `README.md`            | Project documentation               |

## Priority Encoder Logic

The encoder takes a 4-bit input (`in[3:0]`) and outputs a 2-bit binary code (`out[1:0]`) that corresponds to the index of the highest-priority input bit that is high. An additional output signal `valid` indicates if any input is high.

### Truth Table

| Input (`in`) | Output (`out`) | Valid |
|--------------|----------------|--------|
| 0000         | 00             | 0      |
| 0001         | 00             | 1      |
| 0010         | 01             | 1      |
| 0100         | 10             | 1      |
| 1000         | 11             | 1      |
| 1111         | 11             | 1      |
##OUTPUT
<img width="1244" height="369" alt="Screenshot 2025-07-12 120316" src="https://github.com/user-attachments/assets/d5f637f0-f82d-4b32-8767-66a0a538ffbd" />
<img width="2718" height="339" alt="image" src="https://github.com/user-attachments/assets/654d90d5-9a74-4aae-8f38-016e1f3046f3" />

## How to Simulate


### Using Icarus Verilog (Command Line)

```bash
iverilog -o sim_out encoder_4to2.v tb_encoder_4to2.v
vvp sim_out
