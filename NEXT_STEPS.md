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
- [x] Add a `LICENSE` file (MIT).
- [x] Event location map in `01_event_reconstruction/maps/event_location.png`, embedded in timeline §7.
- [x] Infrastructure concentration: not a second PNG. Plant status is on the location map; timeline §7 says so.
- [x] OCHA Nepal Rasuwa Flood Situation Report No. 6 (as of 3 Sep 2026, 19:00): 1,259 dead, 5,083 out of contact, 12,038 rescued. Date it. Do not replace other tolls.
- [x] UNFPA sitrep, 28 Aug–3 Sep 2026: 1,204 dead, ~4,216 unaccounted. Record the disagreement with OCHA. Do not pick one.
- [x] Sharma et al. 2022, cascading hazards in the central Himalaya. One sentence for the timeline or methodology.
- [x] Li et al. 2022, High Mountain Asia hydropower and landscape instability. One sentence next to the Chamoli analog.
- [x] Park, do not mine: Westoby et al. 2014 (why no breach model), Kirschbaum et al. 2019 (remote sensing, not an inventory), USACE Rosati et al. 2015 (coastal resilience, wrong domain), NIA actuarial survey (Mar 2026) and microinsurance note (Nov 2025) unless a new market fact appears.
- [x] Adhikari, Subedi et al., Seismica, 2 Oct 2026. Rock fall with some ice, ~100 million m³, north flank of Tsangbu Ri. Conflicts with the Langtang Lirung location. Record both. Do not pick.
- [x] Copernicus EMSR927 grading, 27 Aug 2026. Syabrubesi: >240 buildings destroyed, 32 damaged. Use the grading product. Do not treat the activation line “reportedly a GLOF” as the mechanism.
- [x] World Weather Attribution, 17 Sep 2026. Glacier thinning, permafrost thaw, warmest July–August locally. 2015 quake is an unconfirmed precondition. Date their death toll. Not a loss model.
- [x] NIA claims snapshots. 31 Aug: NPR 25.87 billion, 583 policies. 29 Sep: NPR 20.98 billion, 2,180 policies; deadlines waived; advances up to half of a preliminary survey. Date both. Do not blend.
- [x] Park, EarthArXiv, Sep 2026: preprint only. No-lake argument, volume 27 (18–35) million m³. Conflicts with Seismica and the 142 million m³ technical note. Unresolved. Do not adopt.
- [x] Render the §4 ASCII hazard chain as a diagram; mark CONFIRMED vs HYPOTHESIS
      (dam formation/breach stays HYPOTHESIS). (Do not build a rainfall–DEM–hydraulic flood map. Points + schematic are enough.)
- [x] Cite JRC *or* HAZUS as the literature family for the placeholder
      depth-damage slopes (one paragraph in `data_limitations.md` plus a
      comment in `vulnerability_functions.py`). Still label them not
      Nepal-calibrated.
- [x] 8–10 slide executive deck in `slides/`
      Event → cascade (dam = hypothesis) → NIA market facts → 6–7% gap
      with filed≠paid caveat → $33M ≠ $2.6B → three risk-finance layers →
      two-events-in-14-months question.
- [x] 10–15 page technical report in `report/`
      Stitch existing modules. Do not add a new model.
- [x] Correct README.md: national aggregate figures are contextual comparisons, not calibration targets.
- [x] Replace `02_exposure_vulnerability/data_limitations.md` with the revised reader-facing version.
- [x] Update `vulnerability_functions.py` docstring (and any inline comments) to state that the functions are JRC-informed simplified approximations, not Nepal-calibrated.
- [x] Improve primary-source links for the main figures (national loss estimate, NIA 31 Aug and 29 Sep snapshots, OCHA tolls, Copernicus EMSR927 grading).
- [x] Commit and link the final executive deck (`slides/`) and technical summary (`report/`) from the README.
- [x] Update the “last reviewed” date and remove outdated project-status language.
- [x] Run the existing analysis from a clean checkout and confirm the documented headline outputs reproduce.
- [x] Add basic input checks to the vulnerability calculation (negative depths, missing values, unrecognised asset types) so NaNs or negative losses are caught.

## Out of scope / future work

The following are outside the scope of this case study. They would increase fidelity or demonstrate additional analyst skills, but they are not required for the present repository to serve as an application example.

- Rainfall–runoff or DEM-based hydraulic modelling.
- OSM or other building-stock inventories.
- Company-level payout data or donor/funding ledgers.
- Stochastic event catalogues or frequency modelling derived from this single event.
- Retuning vulnerability curves to force agreement with the ~US$2.6 billion national estimate.
- Exposure-data QA exercise: a larger synthetic client submission with deliberate data-quality issues, a validation script, an exception report, and a cleaned output.
- Portfolio metrics and reinsurance exercise: a labelled synthetic event catalogue with AAL, OEP and AEP calculations, plus simple policy and treaty terms to show gross, ceded and net results.

These items are left for separate work if time permits. The current project remains a reconstruction and illustrative loss workflow on public data.