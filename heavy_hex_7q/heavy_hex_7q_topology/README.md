# Design V2 – Heavy Hex 7-Qubit Topology

## Overview

This folder contains the second iteration (V2) of a 7-qubit heavy-hex unit cell design built using Qiskit Metal.

The goal of this version is to establish a **clean, stable, and geometrically correct topology** that reflects the heavy-hex connectivity used in superconducting quantum processors.

This design serves as a foundational step toward more advanced stages such as coupling analysis, routing optimization, and electromagnetic simulation.

---

## Why Focus on Topology First?

Quantum hardware design follows a layered approach:

1. Topology (qubit placement + connectivity)
2. Coupling modeling (interaction strengths)
3. Physical routing (CPW lines, resonators)
4. Electromagnetic simulation (HFSS / Q3D)
5. Full chip integration

This version intentionally focuses **only on topology** for the following reasons:

### 1. Stability of the Design Environment
Qiskit Metal's routing engine (in version 0.1.5) introduces instability when generating CPW structures:
- Geometry parsing errors (e.g., shapely exceptions)
- Routing failures for diagonal or short segments
- Pin reuse limitations

By removing routing from this stage, we ensure:
- reproducibility
- deterministic layout generation
- clean baseline for future work

---

### 2. Separation of Concerns

Topology and routing represent fundamentally different problems:

- Topology answers:
  - Which qubits are connected?
  - What is the interaction graph?

- Routing answers:
  - How are these connections physically implemented?
  - What are the impedance and coupling characteristics?

Mixing both too early introduces unnecessary complexity and instability.

---

### 3. Alignment with Real Hardware Design Flow

In practical superconducting chip design:

- Topology is defined first at a system level
- Physical implementation is validated later through localized EM simulations

This approach mirrors real-world workflows used in:
- superconducting qubit design teams
- ASIC/EDA methodologies (floorplan → route → signoff)

---

### 4. Enables Clear Mapping to Quantum Models

A clean topology allows direct mapping to:

- adjacency matrices
- Hamiltonian models
- coupling graphs

This is critical for:
- theoretical analysis
- algorithm mapping
- system-level simulation

---

## Heavy-Hex Topology
    Q0
  /    \
Q1      Q2
|        |
Q3 — Q4 — Q5
      |
      Q6

### Connectivity

- Q0 ↔ Q1  
- Q0 ↔ Q2  
- Q1 ↔ Q3  
- Q2 ↔ Q5  
- Q3 ↔ Q4  
- Q4 ↔ Q5  
- Q4 ↔ Q6  

This structure ensures nearest-neighbor coupling while reducing unwanted crosstalk compared to fully connected grids.

---

## Contents

- `design.metal`  
  Qiskit Metal design file containing qubit placement

- `layout.ipynb`  
  Notebook used to generate and visualize the layout

- `layout.png`  
  Visual representation of the qubit placement

- `explanation.md`  
  Additional notes on design decisions and structure

---

## Limitations

This version does **not include**:

- CPW routing
- resonator structures
- impedance control
- electromagnetic modeling

Therefore, it is **not directly usable for extraction or HFSS/Q3D simulation**.

---

## Next Steps

Future iterations will build on this topology:

### V3 – Coupling Analysis
- Construct adjacency matrix
- Estimate coupling strengths (g, χ)
- Map to Hamiltonian

### V4 – Physical Routing
- Introduce CPW lines
- Explore diagonal routing strategies
- Resolve tool limitations

### V5 – Electromagnetic Simulation
- Export to HFSS / Q3D
- Extract coupling and parasitics
- Validate design assumptions

---

## Key Insight

This version represents a deliberate design decision:

> Prioritize correctness and stability at the topology level before introducing physical complexity.

This ensures that all subsequent modeling and simulation steps are built on a reliable foundation.

The 7-qubit unit cell follows the heavy-hex structure:
