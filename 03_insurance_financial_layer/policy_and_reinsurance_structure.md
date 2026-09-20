# Insurance & Reinsurance Structure

*Full bibliography: [`../data/sources.md`](../data/sources.md). Uncertainty framework: [`../METHODOLOGY.md`](../METHODOLOGY.md). Charts: [`module3_insurance_charts.ipynb`](module3_insurance_charts.ipynb).*

*Primary source: Nepal Insurance Authority (NIA), May 2026, "Hydropower Insurance in Nepal: Assessment of Trends, Challenges, and Opportunities for Reform." Five-year market dataset, 121 paid claims. Additional sources: The Statesman / News18 / OnlineKhabar (26–27 Aug 2026); NEPSE; People's Review (Aug 2025); UNDP Nepal (2024); World Bank (Oct 2024).*

## Who enters the formal insurance system, and who doesn't

Insurance coverage along this corridor is not a binary "insured or not." It behaves more like a filter: assets that are easy to identify, value, price, and adjust losses for — large hydropower projects with clear ownership, engineering documentation, and financing structures — enter the formal insurance system readily. Dispersed, remote, or undocumented risk (individual households, small shops, informal livelihoods) is structurally harder to insure, regardless of ability to pay. This is the **protection gap**, and it is a market-structure problem, not simply an affordability problem.

## Policy structure (real market data)

- During construction, hydropower projects are primarily insured under **Contractor's All Risk (CAR)** and **Erection All Risk (EAR)** policies. CAR coverage is frequently required by lenders and regulators.
- Across NIA's hydropower insurance dataset, **All Risk coverage makes up roughly 70%** of the policy mix, with the remainder split across Loss of Profit, Act of God, and other specific-peril coverages.
- Once operational, coverage shifts toward property and machinery-breakdown insurance, sometimes with business-interruption/loss-of-profit add-ons.

## Reinsurance structure

- **62%** of hydropower reinsurance arrangements combine **treaty and facultative** cover; **21%** are proportional/treaty only; **16%** are purely facultative.
- Large hydropower projects frequently exceed standard treaty capacity, requiring supplemental facultative placement — a sign of concentration risk at the individual-asset level, not just the portfolio level.
- **Geographic concentration matters for reinsurers in a specific way**: across NIA's five-year dataset, Sindhupalchowk accounts for the highest share of observed hydropower loss events (~18%), followed by Lamjung (~12%). A single event striking a concentrated corridor can trigger many policies simultaneously — this is an *accumulation risk* problem, distinct from the underlying engineering risk of any single asset.

## Claims settlement performance

- Across 121 paid hydropower claims, the **median settlement time was 298 days overall**; CAR claims specifically had a median of **298 days**, EAR claims **372 days**.
- **Survey/loss-adjustment activity accounted for roughly 62–75% of total claim settlement time** — the dominant bottleneck.
- Implication for this event: physical damage that severs roads, bridges, and communications doesn't just delay reconstruction — it delays the loss adjustment process itself, meaning **physical resilience failures directly degrade financial recovery speed.**

## Underwriting performance

- NIA's own multi-year estimate: **average gross combined ratio ~146%**, **average net combined ratio ~108%** (assuming a 5% expense ratio; figures exclude an early year with incomplete pre-MTR data and the most recent year, which had only 9 months of data).
- In plain terms: for every 100 rupees of premium collected, the hydropower insurance line has historically paid out more than it collected, even after reinsurance recoveries — a sign of a market under real financial strain, not just a hypothetical risk.
- NIA itself has flagged this as a threat to the long-term sustainability of the hydropower insurance market and to insurers' own reinsurance capacity, and has proposed phased minimum rate increases and geographically differentiated pricing.

## Insurability constraints (NIA's own stated concerns)

- Reinsurer caution
- Limited domestic reinsurance capacity
- Insufficient historical loss data
- Inadequate individual project risk assessment
- Flood and landslide account for **~77% of hydropower loss event frequency** (not loss value) in NIA's five-year dataset — these are core perils for this market, not tail risks.

## This event, in that context

- China's national financial regulator activated a second-tier disaster-response protocol for the insurance sector on the Tibet side following the 26 August event; some insurers began processing motor claims quickly. Motor claims are easy to adjust; a hydropower plant is not.
- On the Nepal side, by 26–27 August, NIA had received reports of damage to ~13 hydropower projects (~354 MW operating, ~394 MW under construction, ~748 MW combined). The compiled aggregate table in `../02_exposure_vulnerability/known_damage_totals.csv` lists 14 projects at the same 748 MW — treated here as the same corridor total with an unresolved one-project counting difference across sources, not as two different events. NEPSE's non-life insurance index fell 3.90% and the hydropower index fell 2.84% on the day — the market was already pricing in claims expectations before formal loss adjustment had occurred.
- By end of August, the Nepal insurance industry had received **583 flood-related claims totalling approximately NPR 25.87 billion (~US$171 million)** — concentrated in commercial/hydropower assets.
- The 2025 Rasuwa flood is a useful benchmark: as of early August 2025, NIA had received 78 claims totalling ~NPR 985.9 million across property, marine, engineering/contractor, and motor lines — evidence this corridor already has an active, tested (if strained) claims infrastructure.

> **⚠ Figures as of end of August 2026 — provisional.** These are *filed* insurance-industry flood claims versus a government national-loss estimate and a reconstruction-need range. Filed ≠ paid. Claims are concentrated in commercial/hydropower assets. This is a snapshot, not a precise insured-to-exposed ratio.

## The protection gap (headline number for the report)

| Figure | Amount |
|---|---|
| Insured claims filed (as of end-Aug 2026) | ~US$171 million |
| Government-estimated total direct national loss | ~US$2.6 billion |
| Estimated reconstruction need | ~US$4–5 billion |

Insured claims represent roughly **6–7% of the estimated total direct national loss** — see [module3_insurance_charts.ipynb](module3_insurance_charts.ipynb) for the chart. The remainder is split between uninsured public infrastructure (falls to government fiscal response — Nepal has a US$150 million World Bank Catastrophe Deferred Drawdown Option approved in October 2024 for exactly this kind of liquidity need) and dispersed household/informal risk (largely uncovered, per UNDP Nepal's 2024 diagnostic, which notes microinsurance and agricultural insurance reach low-income households and smallholders through an almost entirely separate system from hydropower/commercial engineering insurance).

## The core analytical point

This is a three-layer risk-financing system, and the layers do not cover the same risks:

```text
Insurable, identifiable, well-documented assets (hydropower, commercial)
   → commercial insurance → reinsurance (treaty + facultative)

Public infrastructure without insurance (roads, bridges, border facilities)
   → government fiscal response / Cat DDO sovereign contingent financing

Dispersed, remote, poorly-documented risk (households, small livelihoods)
   → largely uncovered → self-recovery / humanitarian assistance
```

The question this event actually raises for a risk-finance audience isn't "was this insured?" It's: **"who can transfer this risk, to whom, and what's left over that someone has to absorb directly?"**
