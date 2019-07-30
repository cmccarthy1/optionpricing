# Sobol Sequence Generator

This repository contains kdb+/q code, translated from C++, which demonstrates how the C++ Sobol sequence library (_SobolSeq16384_) can be used in financial problems.

The Financial Examples notebook replicates the `main.cpp` C++ program which generates option prices for both Asian and European markets.

## Requirements

- kdb+ ≥ 3.5 64-bit
- Python ≥ 3.5.0 (macOS/Linux) ≥ 3.6.0 windows
- [embedPy](https://github.com/KxSystems/embedPy)
- SobolSeq16384 (available at [broda.co.uk](http://www.broda.co.uk/SobolSeq/SobolOptionPricing.ZIP))
