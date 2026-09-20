# Nepal 2026 Flood — Catastrophe Risk & Insurance Analytics Case Study

This project analyzes an active, ongoing disaster. As of ~5 September 2026 (see [`01_event_reconstruction/timeline_and_hazard_chain.md`](01_event_reconstruction/timeline_and_hazard_chain.md) for the dated, sourced breakdown), over 1,300 people are confirmed dead and thousands remain missing across Nepal and the Tibet Autonomous Region, with tens of thousands displaced — figures still being reconciled across agencies. This analysis is offered in the belief that honest catastrophe risk analytics — done carefully — is part of how disasters like this one get better understood, financed, and reduced in the future. It is not a purely technical exercise performed on top of a tragedy.

## Objective

**Research question:** What would an insurer, reinsurer, or public risk-finance institution need to understand about the catastrophe risk exposed by the August 2026 Nepal/Tibet border flood-debris cascade?

## Why this project is different

Most portfolio projects in this space are hazard-only: rainfall → flood map → buildings → damage. This one leans on two things that are harder to fake:

1. **A documented cascading hazard chain**, not a single-mechanism flood: a high-altitude rock/ice slope failure that produced a seismic signal initially indistinguishable from an earthquake, a possible transient landslide dam, a debris flood, and a cross-border infrastructure corridor failure — all within roughly 40 minutes of the trigger reaching populated areas.
2. **Real insurance and reinsurance market data**, sourced from the Nepal Insurance Authority's 2026 hydropower insurance report — actual policy structures, actual reinsurance treaty/facultative splits, actual claims settlement timelines, and actual combined ratios. This is the centerpiece of the project (see `03_insurance_financial_layer/`).

## Methodology

This project does not attempt to reproduce a commercial catastrophe model (RMS / Verisk AIR / Moody's RMS). It uses publicly available hazard research, official disaster statistics, and published insurance-market data, with all assumptions stated transparently. Where data was unavailable, illustrative/synthetic values are used and explicitly labelled as such.

```text
Event reconstruction (hazard chain)
        ↓
Exposure & vulnerability (illustrative, calibrated to known totals)
        ↓
Ground-up loss
        ↓
Insurance & reinsurance layer (real market data)
        ↓
Scenario / stress testing
        ↓
Risk insights
```

## Repository structure

```text
nepal-flood-cat-case-study/
│
├── README.md
├── METHODOLOGY.md                 (uncertainty framework: status tags, epistemic/aleatory)
├── 01_event_reconstruction/
│   ├── timeline_and_hazard_chain.md
│   └── maps/                      (place event location / corridor maps here)
├── 02_exposure_vulnerability/
│   ├── exposure_table.csv         (illustrative, asset-level)
│   ├── known_damage_totals.csv    (real, official aggregate figures to calibrate against)
│   ├── vulnerability_functions.py
│   └── data_limitations.md
├── 03_insurance_financial_layer/
│   ├── policy_and_reinsurance_structure.md
│   └── module3_insurance_charts.ipynb
├── 04_scenarios/
│   └── stress_test_table.py
├── report/
│   └── (10–15 page technical report goes here)
├── slides/
│   └── (8–10 slide executive summary goes here)
└── data/
    └── sources.md
```

## Skills demonstrated

| CAT modelling requirement | Demonstrated by |
|---|---|
| Hazard science / literature synthesis | Event reconstruction built on published cross-border GLOF/debris-flow studies (Gouli et al. 2025, Khadka et al. 2024) |
| Exposure & vulnerability modelling | Illustrative exposure table + labelled vulnerability functions, calibrated to known damage totals |
| Insurance & reinsurance mechanics | Real policy/reinsurance structure analysis (NIA 2026 report) |
| Portfolio / accumulation risk | Corridor concentration + treaty capacity discussion |
| Claims & operational risk | Claims settlement time-to-close bottleneck analysis |
| Underwriting performance | Combined ratio analysis |
| Protection gap / risk finance | Insured claims vs. total estimated loss vs. reconstruction need |
| Stress testing / scenario analysis | Scenario table grounded in published extreme discharge modelling |
| Model governance | Discrete confidence tiers (CONFIRMED/REPORTED/HYPOTHESIS) adapted from IPCC uncertainty guidance, plus an explicit epistemic/aleatory uncertainty typology — see `METHODOLOGY.md` |
| Communication | Report + slide deck for technical and non-technical audiences |

## Sources

See `data/sources.md` for the full source list (USGS, ICIMOD, Nepal NDRRMA/Nepal Police, Reuters/AP, Nepal Insurance Authority 2026, UNDP Nepal 2024, World Bank, and peer-reviewed literature).