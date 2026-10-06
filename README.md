# 16-bit Constant-Time Synchronous Binary Counter

## 📌 Project Overview

This project presents the design and simulation of a **16-bit Constant-Time Synchronous Binary Counter** using **Verilog HDL**.

The project was developed as part of an internship mini project at **Embuzz Technologies Private Limited, Salem**.

The design is divided into multiple counter blocks to explore a hierarchical approach to synchronous binary counting and carry propagation.

## 🎯 Objectives

- Design a 16-bit synchronous binary counter using Verilog HDL.
- Divide the counter into smaller functional blocks.
- Generate and distribute propagation-enable (PEN) signals.
- Study backward carry propagation in synchronous counters.
- Simulate and verify the design using ModelSim.
- Understand the effect of carry propagation and fan-out in counter architectures.

## 🏗️ Architecture

The 16-bit counter is divided into three major sections:

```text
                 16-bit Counter
                      │
        ┌─────────────┼─────────────┐
        │             │             │
       C1            C2            C3
     1-bit          5-bit         10-bit
     Counter     Backward       Conventional
                  Counter          Counter
        │             │             │
      PEN1          PEN2        Counter Output
        │             │
        └─────────────┴──────────────
