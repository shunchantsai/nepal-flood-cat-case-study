# Nepal 2026 Flood — Catastrophe Risk & Insurance Analytics Case Study

*A portfolio project for catastrophe modeling / risk analytics roles (Taiwan / UK / US)*

## A note on framing

This project analyzes an active disaster with a rising, confirmed death toll (1,300+ dead, thousands still missing at time of writing) and thousands of displaced people. The README and report should open by acknowledging the human toll directly, before moving into analysis. The point of the project is to demonstrate that catastrophe risk analytics — done honestly — is part of how the world understands and reduces this kind of harm in the future, not a purely technical exercise performed on top of a tragedy.

---

## 1. Objective

**Research question:** What would an insurer, reinsurer, or public risk-finance institution need to understand about the catastrophe risk exposed by the August 2026 Nepal/Tibet border flood-debris cascade?

**Positioning statement (state this explicitly in the README):**
> This project is not an attempt to reproduce a commercial catastrophe model (RMS/Verisk AIR/Moody's). It demonstrates the analytical workflow and modelling competencies used in catastrophe risk analytics, using publicly available hazard research, official disaster statistics, and published insurance-market data, with all assumptions stated transparently.

This is a *narrower and more honest* claim than "I built a CAT model," and it's more credible to an actual reviewer.

---

## 2. What makes this project different from a typical applicant's

Most portfolio projects in this space are generic: rainfall → flood map → buildings → damage. Yours has two real advantages — lean into both instead of trying to also prove you can do original hydraulic modelling:

1. **You already have a well-documented compound hazard chain narrative** — glacier/rock-slope failure → seismic signal misread as an earthquake → transient landslide dam → debris flood → cross-border infrastructure corridor failure. This is a more sophisticated risk story than "it rained a lot."
2. **You already have real insurance/reinsurance market data**, from the Nepal Insurance Authority's 2026 hydropower insurance report: real policy structures (CAR/EAR, ~70% All Risk), real reinsurance structure (62% treaty+facultative), real claims turnaround data (298/372-day median TAT, surveying = 62–75% of that time), real combined ratios (~146% gross / ~108% net), and geographic loss concentration data (Sindhupalchowk 18%, Lamjung 12%). Almost no student/early-career portfolio project has this. **This is your centerpiece, not a side module.**

---

## 3. Revised scope (leaner than the original brief)

Cut from six heavyweight modules to four, each scoped to be genuinely finishable:

### Module A — Event reconstruction (narrative + map, not hydraulic modelling)
- Timeline and hazard-chain diagram: glacier/rock-slope failure → seismic misattribution → possible landslide dam → debris flood → downstream corridor impact.
- Use **existing** hazard/exposure studies for this corridor rather than deriving your own flood extent: Gouli et al. (2025) and Khadka et al. (2024) already modelled peak discharge (7,500–38,000 m³/s under extreme scenarios) and exposure (3,000+ buildings, ~50 bridges, 9 hydropower facilities) for this exact cross-border basin. Cite and build on these — this is what real CAT modellers do with peer-reviewed hazard science, and it's far more defensible than DIY hydraulics.
- One map (event location + corridor), one hazard-chain diagram, one timeline figure. That's enough.

### Module B — Exposure & vulnerability (illustrative, clearly labelled)
- Build a small, honest exposure table (buildings, bridges, roads, hydropower) calibrated loosely to the real headline damage figures you already have: 7,500–8,300 buildings destroyed, 41 bridges swept away, ~748 MW of hydropower affected, ~41 km of road destroyed in Rasuwa, ~US$2.6B total estimated national loss.
- Vulnerability functions: adapt illustrative depth-damage curves from the literature per asset class (residential / hydropower / bridge / road). Label explicitly as "illustrative, literature-informed" — do not claim Nepal-specific calibration.
- Skip the full QA/QC notebook as a separate module — fold a short, honest "data limitations" section into this module instead (missing coordinates, synthetic replacement values, etc.). Don't manufacture a formal QA/QC pipeline for a small illustrative dataset; it will read as padding.

### Module C — Insurance & financial layer (your differentiator — build this out fully)
- Use the **real** NIA data as the backbone, not invented hypothetical policies:
  - Policy structure mix (CAR/EAR, ~70% All Risk, Loss of Profit, Act of God)
  - Reinsurance structure (62% treaty+facultative, 21% proportional/treaty, 16% facultative) and why large hydropower risk exceeds treaty capacity
  - Accumulation risk: why one event can trigger many policies at once in a concentrated corridor
  - Claims settlement bottlenecks (298/372-day median TAT, survey/adjustment = 62–75% of that time) and what that means for financial resilience vs. physical resilience
  - Combined ratio deterioration (~146% gross / ~108% net) and what NIA itself is recommending (risk-differentiated pricing, phased minimum rates)
  - The protection gap: compare insured claims (~US$171M filed) against government-estimated total loss (~US$2.6B) and reconstruction need (~US$4–5B) — visualize this gap directly, it's a striking, honest number
  - Risk-layering diagram: insurable/insured assets → commercial insurance/reinsurance; uninsured public infrastructure → government fiscal response/Cat DDO; dispersed/informal risk → mostly uncovered
- This module should be the longest and most detailed part of your report. It shows you understand risk transfer mechanics, not just hazard science — which is what distinguishes catastrophe *risk analytics* from flood modelling.

### Module D — Scenario framing (replaces the full probabilistic/Monte Carlo module)
- Drop the "10,000 synthetic events" stochastic catalogue and full EP curve unless you can genuinely ground an annual frequency assumption in regional data — a fabricated frequency curve invites the exact question ("where did this frequency come from?") that will undercut your credibility in an interview.
- Instead, do a **scenario/stress-test table** (this is lower-risk and still demonstrates the right thinking):
  - Baseline (observed event)
  - +20% flood depth
  - Expanded footprint
  - Higher asset values / updated exposure
  - Extreme/tail scenario, informed directly by Gouli et al.'s modelled extreme discharge range
- Frame this explicitly as "given the corridor has now had two major events in 14 months, is a single fixed return-period assumption still appropriate?" — this is a genuinely interesting, defensible question that doesn't require you to fabricate a frequency distribution.
- If you want a lightweight uncertainty treatment, do a small sensitivity analysis (tornado chart) on 3–4 key assumptions (replacement values, vulnerability exponent, deductible level) rather than a full Monte Carlo run.

---

## 4. Repository structure (simplified)

```text
nepal-flood-cat-case-study/
│
├── README.md
├── 01_event_reconstruction/
│   ├── timeline_and_hazard_chain.md
│   └── maps/
├── 02_exposure_vulnerability/
│   ├── exposure_table.csv
│   ├── vulnerability_functions.py (or .py)
│   └── data_limitations.md
├── 03_insurance_financial_layer/
│   ├── policy_and_reinsurance_structure.md
│   └── module3_insurance_charts.ipynb
├── 04_scenarios/
│   └── stress_test_table.py
├── report/
│   └── Nepal_CAT_Report.pdf   (10–15 pages, not 25)
├── slides/
│   └── executive_summary.pdf  (8–10 slides)
└── data/
    └── sources.md
```

---

## 5. Deliverables (cut down)

1. **GitHub repository** — the reproducible workflow above.
2. **One report, 10–15 pages** (not 15–25) — event, exposure/vulnerability, insurance/financial layer (the bulk), scenarios, limitations.
3. **One short slide deck, 8–10 slides** — for a non-technical audience (recruiter, hiring panel).

Drop the separate one-page executive summary and the standalone interactive-map deliverable as first-pass targets — add them later only if the core three are done with room to spare.

---

## 6. Skills-mapping table (keep this — it's genuinely useful for recruiters)

| CAT modelling requirement | Demonstrated by |
|---|---|
| Hazard science / literature synthesis | Event reconstruction built on published cross-border GLOF/debris-flow studies |
| Exposure & vulnerability modelling | Illustrative exposure table + labelled vulnerability functions |
| Insurance & reinsurance mechanics | Real policy/reinsurance structure analysis (NIA data) |
| Portfolio / accumulation risk | Corridor concentration + treaty capacity discussion |
| Claims & operational risk | Claims TAT bottleneck analysis |
| Underwriting performance | Combined ratio analysis |
| Protection gap / risk finance | Insured loss vs. total loss vs. reconstruction need |
| Stress testing / scenario analysis | Scenario table grounded in published extreme discharge modelling |
| Model governance | Explicit "illustrative, not authoritative" labelling throughout |
| Communication | Report + slide deck for technical and non-technical audiences |

---

## 7. Build sequence

**Phase 1:** Event reconstruction narrative + hazard-chain diagram (mostly done — adapt your existing Threads research)
**Phase 2:** Exposure/vulnerability table + limitations note
**Phase 3:** Insurance & financial layer (the centerpiece — give this the most time)
**Phase 4:** Scenario/stress-test table
**Phase 5:** Report + slides + repo polish

Get Phases 1–3 working end-to-end first. That alone — a well-documented hazard chain, an honest exposure/loss estimate, and a genuinely detailed insurance/financial analysis grounded in real market data — is a complete, credible, and *finishable* portfolio piece. Everything after that is polish, not the core claim.
