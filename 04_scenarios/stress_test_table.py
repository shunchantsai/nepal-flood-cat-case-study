"""stress_test_table.py

Scenario/stress-test analysis, used INSTEAD OF a fabricated Monte Carlo
stochastic event catalogue.

Extreme scenario discharge range (7,500-38,220 m3/s) is from Gouli et al. (2025).
That range is EPISTEMIC (breach-severity assumptions), not aleatory.
See METHODOLOGY.md.
"""

import sys
from pathlib import Path

import pandas as pd

ROOT = Path(__file__).resolve().parents[1]
MODULE2 = ROOT / "02_exposure_vulnerability"
sys.path.insert(0, str(MODULE2))

from vulnerability_functions import damage_ratio  # noqa: E402

OUT_PATH = Path(__file__).resolve().parent / "stress_test_results.csv"


def run_scenario(exposure, depth_mult, exposure_mult, value_mult):
    df = exposure.copy()
    df["hazard_depth_m"] = df["hazard_depth_m"] * depth_mult
    df["replacement_value_usd"] = df["replacement_value_usd"] * value_mult
    df["damage_ratio"] = [
        damage_ratio(asset_type, depth)
        for asset_type, depth in zip(df["asset_type"], df["hazard_depth_m"])
    ]
    df["ground_up_loss_usd"] = (
        df["replacement_value_usd"] * df["damage_ratio"] * exposure_mult
    )
    return df["ground_up_loss_usd"].sum()


if __name__ == "__main__":
    scenarios = pd.DataFrame(
        {
            "scenario": [
                "Baseline (observed event, illustrative depths)",
                "+20% flood depth",
                "Expanded footprint (+more assets exposed)",
                "Higher exposure values (updated replacement costs)",
                "Extreme/tail scenario (Gouli et al. 2025 upper discharge range)",
            ],
            "depth_multiplier": [1.0, 1.2, 1.0, 1.0, 2.0],
            "exposure_multiplier": [1.0, 1.0, 1.3, 1.0, 1.5],
            "value_multiplier": [1.0, 1.0, 1.0, 1.15, 1.0],
        }
    )
    exposure = pd.read_csv(MODULE2 / "exposure_table.csv")
    scenarios["total_ground_up_loss_usd"] = [
        run_scenario(exposure, d, e, v)
        for d, e, v in zip(
            scenarios["depth_multiplier"],
            scenarios["exposure_multiplier"],
            scenarios["value_multiplier"],
        )
    ]
    scenarios.to_csv(OUT_PATH, index=False)
    print(scenarios.to_string(index=False))
