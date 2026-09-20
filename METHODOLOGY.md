# Methodology: Reading Uncertainty in This Project

This project analyzes an active, still-developing disaster using publicly available sources.
Two separate questions are asked throughout, and they are kept distinct rather than collapsed
into one tag.

## How well-evidenced is a claim?

Individual claims and timeline entries — primarily in
`01_event_reconstruction/timeline_and_hazard_chain.md` — carry a status tag:

- **CONFIRMED** — corroborated by an official/technical source (USGS, ICIMOD, Nepal
  NDRRMA/Police), or by multiple independent reputable sources converging on the same account.
- **REPORTED** — stated by an official or single-source outlet, provisional or not yet
  reconciled across agencies.
- **HYPOTHESIS** — a plausible mechanism still under investigation, not yet established.

This is a project-specific adaptation of the confidence dimension used in IPCC uncertainty
guidance (evidence + agreement), collapsed into three discrete tiers appropriate for
single-event forensic claims rather than large-scale literature synthesis. A calibrated
numeric likelihood scale (e.g. "very likely, >90%") is deliberately not used for individual
historical facts in this project — that scale is built for synthesizing many independent
studies into a probabilistic finding, and applying it to a single-event claim (e.g. "did a
landslide dam form") would overstate the precision the underlying evidence actually supports.

Where a source disagrees with another source on a specific detail of an otherwise-confirmed
occurrence (e.g. which hydropower site a rescue took place at), that conflict is flagged
inline in prose rather than given its own status tag — the occurrence itself is CONFIRMED;
the disputed detail is noted alongside it.

## Why is it uncertain?

Separately, where a claim's uncertainty is discussed in prose, it is described as:

- **Epistemic** — uncertain because evidence is missing or incomplete. Resolvable in
  principle with more data (e.g. satellite imagery, field surveys, precise volume estimates,
  post-event damage surveys).
- **Aleatory** — uncertain because of natural variability in the physical system itself. Not
  resolvable simply by gathering more information (e.g. the timing or magnitude of a future
  triggering event in this corridor).

Most uncertainty identified in this project so far is epistemic — missing satellite imagery
on the dam-breach question (`01_event_reconstruction/timeline_and_hazard_chain.md`, §3),
literature-informed rather than regionally-calibrated vulnerability curves
(`02_exposure_vulnerability/data_limitations.md`), and casualty figures still being
reconciled across agencies (`01_event_reconstruction/timeline_and_hazard_chain.md`, §2).

Genuine aleatory uncertainty is narrower, and is treated explicitly as such where it appears.
The clearest case is the return-period question raised in
`04_scenarios/stress_test_table.py`: with two major events in this corridor within 14 months,
is a single fixed historical return-period assumption still appropriate? That question is
about the natural, irreducible variability in when and how large the next triggering event
will be — not something more research alone resolves. This project deliberately does not
fabricate a synthetic annual-frequency distribution to answer it, since doing so would require
assuming a resolved probability model this project does not have the underlying data to
support. The scenario/stress-test table in `04_scenarios/stress_test_table.py` is the honest
alternative: it bounds plausible outcomes without pretending to know their probabilities.

## Applying this

- A tag or label is only ever added where it changes how a claim should be read — not applied
  retroactively as decoration across every line.
- Upgrading a HYPOTHESIS to CONFIRMED requires a primary source (formal investigation report,
  field/satellite evidence) — a more assertive secondary account is not sufficient on its own,
  even when several secondary accounts agree with each other.
- This is a labelling convention applied narratively within relevant sections across modules,
  not an additional status-tag column in any table.