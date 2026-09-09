# Nepal 2026 Flood — Catastrophe Risk & Insurance Analytics Case Study

*A portfolio case study for catastrophe modelling / risk analytics roles.*

> This project analyzes an active, ongoing disaster. As of the most recent update in the underlying source material, over 1,300 people are confirmed dead and thousands remain missing across Nepal and the Tibet Autonomous Region, with tens of thousands displaced. This analysis is offered in the belief that honest catastrophe risk analytics — done carefully — is part of how disasters like this one get better understood, financed, and reduced in the future. It is not a purely technical exercise performed on top of a tragedy.

## Objective

**Research question:** What would an insurer, reinsurer, or public risk-finance institution need to understand about the catastrophe risk exposed by the August 2026 Nepal/Tibet border flood-debris cascade?

**Positioning statement:**
> This project is not an attempt to reproduce a commercial catastrophe model (RMS / Verisk AIR / Moody's RMS). It demonstrates the analytical workflow and modelling competencies used in catastrophe risk analytics, using publicly available hazard research, official disaster statistics, and published insurance-market data, with all assumptions stated transparently. Where data was unavailable, illustrative/synthetic values are used and explicitly labelled as such.

## Workflow

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

## Why this project is different

Most portfolio projects in this space are hazard-only: rainfall → flood map → buildings → damage. This one leans on two things that are harder to fake:

1. **A documented compound hazard chain**, not a single-mechanism flood: a high-altitude rock/ice slope failure that produced a seismic signal initially indistinguishable from an earthquake, a possible transient landslide dam, a debris flood, and a cross-border infrastructure corridor failure — all within roughly 40 minutes of the trigger reaching populated areas.
2. **Real insurance and reinsurance market data**, sourced from the Nepal Insurance Authority's 2026 hydropower insurance report — actual policy structures, actual reinsurance treaty/facultative splits, actual claims settlement timelines, and actual combined ratios. This is the centerpiece of the project (see `03_insurance_financial_layer/`), not a side module.

## Repository structure

```text
nepal-flood-cat-case-study/
│
├── README.md
├── 01_event_reconstruction/
│   ├── timeline_and_hazard_chain.md
│   └── maps/                      (place event location / corridor maps here)
├── 02_exposure_vulnerability/
│   ├── exposure_table.csv         (illustrative, asset-level)
│   ├── known_damage_totals.csv    (real, official aggregate figures to calibrate against)
│   ├── vulnerability_functions.R
│   └── data_limitations.md
├── 03_insurance_financial_layer/
│   ├── policy_and_reinsurance_structure.md
│   ├── claims_and_combined_ratio_analysis.R
│   └── protection_gap_analysis.R
├── 04_scenarios/
│   └── stress_test_table.R
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
| Model governance | Explicit "illustrative, not authoritative" labelling throughout |
| Communication | Report + slide deck for technical and non-technical audiences |

## Build sequence

1. Event reconstruction narrative + hazard-chain diagram
2. Exposure/vulnerability table + limitations note
3. Insurance & financial layer (the centerpiece)
4. Scenario/stress-test table
5. Report + slides + repo polish

## Sources

See `data/sources.md` for the full source list (USGS, ICIMOD, Nepal NDRRMA/Nepal Police, Reuters/AP, Nepal Insurance Authority 2026, UNDP Nepal 2024, World Bank, and peer-reviewed literature).
