# Quantum Hardware Experiments

This repository documents my exploration of quantum hardware layout design using Qiskit Metal.

The focus is on building physically meaningful superconducting qubit layouts and preparing them for electromagnetic simulation and Hamiltonian extraction.

---

## Current Work

### 7-Qubit Heavy-Hex Unit Cell

This project implements a minimal heavy-hex lattice unit cell inspired by architectures used in modern superconducting quantum processors.

The goal is to create a clean and structured workflow that connects:

* Layout generation (Qiskit Metal)
* Electromagnetic simulation (HFSS / Q3D)
* Parameter extraction (EPR, coupling strengths)

---

## Project Structure

```bash
heavy_hex_7q/
├── layout.ipynb        # Qiskit Metal layout generation code
├── design.metal        # Saved design file from GUI
├── explanation.md      # Design reasoning and notes
```

---

## How to Use (Pull and Run)

### 1. Clone the repository

```bash
git clone https://github.com/<your-username>/quantum-hardware-experiments.git
cd quantum-hardware-experiments
```

---

### 2. Checkout the working branch

```bash
git checkout feature/heavy-hex-7q
```

---

### 3. Create environment (recommended)

```bash
conda create -n qmetal python=3.9
conda activate qmetal
pip install qiskit-metal
```

---

### 4. Run the layout

```bash
jupyter notebook
```

Open:

```bash
heavy_hex_7q/layout.ipynb
```

Run all cells to generate the layout in Qiskit Metal GUI.

---

## Design Approach

This implementation prioritizes stability and clarity over automation:

* Deterministic qubit placement
* Explicit control of connections
* Avoidance of unstable auto-routing where possible
* Focus on correct lattice topology before physical optimization

The current layout represents a structural foundation, not a finalized fabrication-ready design.

---

## Why Heavy-Hex?

Heavy-hex lattices are widely used in superconducting quantum processors because they:

* Reduce unwanted qubit-qubit interactions
* Improve scalability
* Enable better control over coupling topology
* Support error correction architectures

Understanding this layout at the geometry level is the first step toward understanding its physical behavior.

---

## Next Steps

* Replace simplified connections with CPW-based routing
* Export layout to GDS
* Run HFSS / Q3D simulations
* Extract coupling parameters (χ matrix)
* Validate interactions using EPR analysis
* Scale from 7-qubit unit cell to larger lattices (27 / 54 qubits)

---

## Notes

This repository is part of an ongoing research workflow.
The goal is to move step-by-step from layout intuition to physically meaningful quantum system modeling.

---

## Requirements

* Python 3.9
* Qiskit Metal
* (Optional) Ansys HFSS / Q3D for simulation

---

## Author

Work in progress focused on bridging layout design and quantum hardware understanding.
