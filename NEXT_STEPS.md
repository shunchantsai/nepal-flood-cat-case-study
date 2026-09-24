# Next Steps

Tracking file for outstanding work. Reader-facing module files should stay
free of TODO language.

## Done
- [x] Uncertainty framework (`METHODOLOGY.md`) and CONFIRMED/REPORTED/HYPOTHESIS tags
- [x] Module 1 timeline; README no longer calls the full chain "documented"
- [x] Module 2 toy exposure + Python vulnerability script; $33.3M vs $2.6B
      recorded in `data_limitations.md`
- [x] Module 3 notebook is the only chart artifact
- [x] Module 4 Python scenario table
- [x] `.gitignore` (including `.DS_Store`, script outputs, `*.png`)
- [x] README "last reviewed" date (20 September 2026)

## Still to do (application packet)

### 1. Maps and diagram (Module 1)
- [ ] Event location map (Nepal/Tibet border → slope-failure source →
      Bhote Koshi → Trishuli corridor). See timeline §7.
- [ ] Infrastructure concentration map (bridges, roads, hydropower, settlements).
- [ ] Put both in `01_event_reconstruction/maps/` and embed them in the timeline.
- [ ] Render the §4 ASCII hazard chain as a diagram; mark CONFIRMED vs HYPOTHESIS
      (dam formation/breach stays HYPOTHESIS).

Do not build a rainfall–DEM–hydraulic flood map. Points + schematic are enough.

### 2. Vulnerability citation (Module 2)
- [ ] Cite JRC *or* HAZUS as the literature family for the placeholder
      depth-damage slopes (one paragraph in `data_limitations.md` plus a
      comment in `vulnerability_functions.py`). Still label them not
      Nepal-calibrated.

### 3. Repo hygiene
- [x] Add a `LICENSE` file (MIT).

### 4. Communication (what a hiring reviewer will actually open)
- [ ] 8–10 slide executive deck in `slides/`
      Event → cascade (dam = hypothesis) → NIA market facts → 6–7% gap
      with filed≠paid caveat → $33M ≠ $2.6B → three risk-finance layers →
      two-events-in-14-months question.
- [ ] 10–15 page technical report in `report/`
      Stitch existing modules. Do not add a new model.

## Out of scope
Rainfall–runoff, DEM hydraulics, OSM building stock, company-level payouts,
donor/funding ledgers, stochastic catalogues, retuning curves toward $2.6B.