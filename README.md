# Digital Stopwatch Controller Using Verilog HDL

## About the Project

This project implements a digital stopwatch controller using Verilog HDL. The design combines a Finite State Machine (FSM) with a 6-bit counter to manage counting operations based on user control inputs. Intel Quartus Prime Lite was used for synthesis, and ModelSim was used to simulate the design.

## Functional Highlights

- **Start:** Enables the counter to begin incrementing.
- **Pause:** Temporarily disables counting while retaining the current value.
- **Resume:** Restarts counting from the previously retained value.
- **Reset:** Clears the counter and returns the controller to its initial state.
- **Counter rollover:** Returns the count to zero after reaching 59.

## Internal Design

The design is divided into three functional Verilog modules:

- **`stopwatch_fsm.v`** – Implements the IDLE, RUNNING, and PAUSED states and generates the counter enable signal.
- **`counter.v`** – Updates the count on the rising edge of the clock when enabled and clears it during reset.
- **`stopwatch_top.v`** – Connects the FSM controller and counter to form the complete design.

A separate testbench, **`tb_stopwatch.v`**, provides clock and control-input sequences for functional simulation.

## Development Environment

- Hardware Description Language: Verilog HDL
- Synthesis Tool: Intel Quartus Prime Lite
- Simulation Tool: ModelSim Intel FPGA Starter Edition

## Design and Verification Process

The RTL modules were integrated and compiled in Quartus Prime Lite. The testbench was then simulated in ModelSim to observe the clock, reset, start, pause, and counter signals. The simulation waveform was used to inspect the counter's response to the applied control sequences.

## Concepts Practiced

- FSM-based control logic
- Clock-driven sequential circuits
- Combinational next-state logic
- Counter implementation
- Hierarchical module integration
- Testbench creation and waveform analysis
- RTL synthesis and functional simulation

## Potential Improvements

Future versions could incorporate a clock divider for one-second intervals, a seven-segment display for showing the count, and input debouncing for physical FPGA push buttons.

## Author

**Sakthi Shyamala LA**

An academic digital design project developed to strengthen practical skills in Verilog RTL design and simulation.
