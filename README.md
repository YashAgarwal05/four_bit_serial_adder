# Four Bit Serial Adder (Verilog)

## Introduction

A **Serial Adder** is a digital circuit that performs addition one bit at a time using a single full adder and a carry register. Compared to parallel adders, serial adders use less hardware but require multiple clock cycles to complete the operation.

In this project, a **four-bit serial adder** is implemented using **Verilog HDL**. The design adds two 4-bit binary numbers serially over multiple clock cycles and produces a 5-bit sum output.

---

## Serial Addition Concept and Timing

The serial adder operates synchronously with the clock. Instead of adding all bits simultaneously, it:

- Loads one bit of each operand per clock cycle
- Computes the sum and carry
- Stores the result bit-by-bit
- Produces the final carry as the most significant bit

The entire addition process takes multiple clock cycles to complete.

---

## Serial Addition Sequence Flow

The serial addition follows this sequence:

1. Bits of operands `a` and `b` are loaded **LSB first**
2. A full adder computes:
   - Sum bit (`s`)
   - Carry-out (`cout`)
3. The carry-out is fed back as carry-in (`cin`) for the next bit
4. Sum bits are stored sequentially
5. After all 4 bits are processed, the final carry is stored

This results in a **5-bit output** representing the final sum.

---

## Design Overview

The four-bit serial adder is implemented using the following modules:

- **Load Bit Module**
- **Full Adder Module**
- **Store Module**
- **Top-Level Integration Module**

Each module performs a specific role in the serial addition process.

---

## Four Bit Serial Adder Module

### Interface Signals

- **clk**  
  System clock input

- **reset**  
  Asynchronous active-high reset

- **a [3:0], b [3:0]**  
  4-bit input operands

- **out [4:0]**  
  5-bit serial addition result

- **counter [3:0]**  
  Tracks the addition and storage process

- **a0, b0**  
  Current operand bits being added

- **cin**  
  Carry-in to the full adder

- **cout**  
  Carry-out from the full adder

- **s**  
  Sum output of the full adder

---

## Load Bit Module

The load bit module is responsible for:

- Extracting one bit at a time from operands `a` and `b`
- Providing the current carry to the adder
- Advancing through operand bits using an internal counter

Bits are loaded sequentially on each clock cycle.

---

## Adder Module

The adder module functions as a **full adder**:

- Computes the sum bit using XOR logic
- Computes the carry-out using AND and OR logic
- Registers the carry-out on the rising edge of the clock
- Resets the carry when reset is asserted

This module performs the core arithmetic operation.

---

## Store Module

The store module collects the serial sum bits:

- Stores each sum bit into the output register
- Uses a counter to place bits in the correct position
- Stores the final carry as the most significant bit
- Holds the final result once addition is complete

---

## Testbench Overview

A Verilog testbench is used to verify the functionality of the four-bit serial adder.

### Testbench Features

- Generates a periodic clock signal
- Applies reset to initialize internal registers
- Provides fixed 4-bit input operands
- Observes sum output, carry behavior, and counters
- Allows sufficient simulation time to complete serial addition

The testbench confirms correct serial addition behavior.

---

## Overall System Operation

1. Reset initializes all registers and counters.
2. Input operands `a` and `b` are applied.
3. Bits are loaded sequentially on each clock cycle.
4. The adder computes sum and carry for each bit.
5. Sum bits are stored sequentially.
6. The final carry is stored, completing the operation.

This confirms correct four-bit serial addition.

---

## Summary

This project demonstrates a **four-bit serial adder implemented in Verilog**. The design performs multi-cycle addition using minimal hardware resources by reusing a single full adder.

The modular structure and clear separation of functionality make the design suitable for learning serial arithmetic and sequential digital system design.

<img width="1576" height="808" alt="Screenshot 2025-12-17 171817" src="https://github.com/user-attachments/assets/282621ef-7291-43c4-9a25-d1a8d74f4128" />
