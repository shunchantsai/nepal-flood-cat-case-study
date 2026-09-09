# stress_test_table.R
#
# Scenario/stress-test analysis, used INSTEAD OF a fabricated Monte Carlo
# stochastic event catalogue. A synthetic annual-frequency assumption for a
# single historical event is difficult to defend credibly; a scenario table
# grounded in published extreme-discharge research is more honest and more
# defensible in an interview setting.
#
# Extreme scenario discharge range (7,500-38,220 m3/s) is drawn from
# Gouli et al. (2025), who modelled extreme GLOF/debris-flood scenarios for
# this exact cross-border basin. Cite this directly in the report.

library(dplyr)

source("../02_exposure_vulnerability/vulnerability_functions.R")  # reuse damage_ratio()

scenarios <- tibble::tibble(
  scenario = c(
    "Baseline (observed event, illustrative depths)",
    "+20% flood depth",
    "Expanded footprint (+more assets exposed)",
    "Higher exposure values (updated replacement costs)",
    "Extreme/tail scenario (Gouli et al. 2025 upper discharge range)"
  ),
  depth_multiplier = c(1.0, 1.2, 1.0, 1.0, 2.0),   # extreme scenario depth multiplier is illustrative -
                                                     # justify against Gouli et al. discharge range in the report
  exposure_multiplier = c(1.0, 1.0, 1.3, 1.0, 1.5),
  value_multiplier = c(1.0, 1.0, 1.0, 1.15, 1.0)
)

exposure <- readr::read_csv("../02_exposure_vulnerability/exposure_table.csv")

run_scenario <- function(depth_mult, exposure_mult, value_mult) {
  df <- exposure %>%
    mutate(
      hazard_depth_m = hazard_depth_m * depth_mult,
      replacement_value_usd = replacement_value_usd * value_mult,
      damage_ratio = damage_ratio(asset_type, hazard_depth_m),
      ground_up_loss_usd = replacement_value_usd * damage_ratio * exposure_mult
    )
  sum(df$ground_up_loss_usd, na.rm = TRUE)
}

scenarios <- scenarios %>%
  rowwise() %>%
  mutate(
    total_ground_up_loss_usd = run_scenario(depth_multiplier, exposure_multiplier, value_multiplier)
  ) %>%
  ungroup()

readr::write_csv(scenarios, "stress_test_results.csv")
print(scenarios)

# Framing note for the report: with two major events in this corridor within
# 14 months, the analytical question worth raising is not "what is the exact
# annual probability of this event" (which would require a fabricated
# frequency assumption) but "is a single fixed historical return-period
# assumption still an appropriate basis for reconstruction decisions here?"
