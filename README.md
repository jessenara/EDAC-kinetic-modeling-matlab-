# E-DAC Kinetic Modeling Toolkit

MATLAB scripts for reactor boundary condition modeling, electrochemical performance evaluation (**FE** and **SEC**), and literature benchmarking for continuous-flow Electrochemical Direct Air Capture (E-DAC).

> **Workflow Note:** Calibration curves and preliminary regressions are processed in spreadsheets; metric calculations are executed in MATLAB (R2022b+).
> **Representative sample data:** unpublished raw experimental datasets are excluded
## Repository Structure

```text
├── README.md
├── figures/
│   ├── literature_SEC.m      # Literature review SEC summary plot generation script
│   └── Figure.png            # Literature review SEC summary plot
└── scripts/
    ├── Flow_Rate.m                # Minimum H2 flow rate (Q_min) & stoichiometric ratio (lambda)
    ├── Control_Volume.m           # BioChamber 2000 net gaseous control volume (V_gas)
    ├── FE.m                       # Hydroxide Faradaic Efficiency (FE) across trials
    └── SEC.m                      # Specific Energy Consumption (SEC) calculation
