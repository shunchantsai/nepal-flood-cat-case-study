"""
insured_loss_layer.py

Illustrative insured-loss layer for the synthetic exposure table.
All policy terms are hypothetical and for demonstration only.
They are not actual Nepal policy conditions.

Reproduces the ground-up calculation from vulnerability_functions.py
and then applies a deductible and limit to produce gross insured
and retained loss.
"""

from pathlib import Path
import pandas as pd

# ---------------------------------------------------------------------------
# Hypothetical policy terms (demonstration only)
# ---------------------------------------------------------------------------
DEDUCTIBLE = 1_000_000      # USD
LIMIT = 20_000_000          # USD

# ---------------------------------------------------------------------------
# Asset-type slopes (same as vulnerability_functions.py)
# ---------------------------------------------------------------------------
SLOPES = {
    "residential": 0.15,
    "commercial": 0.10,
    "bridge": 0.20,
    "hydropower": 0.25,
    "road_segment": 0.30,
}


def damage_ratio(asset_type: str, depth_m: float) -> float:
    """Linear placeholder depth-damage function. Returns NaN for invalid inputs."""
    if pd.isna(depth_m) or depth_m < 0 or asset_type not in SLOPES:
        return float("nan")
    return min(1.0, SLOPES[asset_type] * depth_m)


def main():
    # Minimal synthetic exposure (replace with a read of your real CSV if preferred)
    exposure = pd.DataFrame({
        "asset_id": ["A0001", "A0002", "A0005", "A0008"],
        "asset_type": ["residential", "commercial", "hydropower", "bridge"],
        "replacement_value_usd": [250_000, 1_200_000, 50_000_000, 8_000_000],
        "assigned_depth_m": [1.2, 0.8, 2.5, 1.5],
    })

    # Ground-up loss
    exposure["damage_ratio"] = exposure.apply(
        lambda r: damage_ratio(r["asset_type"], r["assigned_depth_m"]), axis=1
    )
    exposure["ground_up_loss_usd"] = (
        exposure["replacement_value_usd"] * exposure["damage_ratio"]
    )

    # Hypothetical insured layer
    def apply_terms(ground_up: float) -> tuple:
        if pd.isna(ground_up):
            return float("nan"), float("nan")
        after_deductible = max(0.0, ground_up - DEDUCTIBLE)
        gross_insured = min(LIMIT, after_deductible)
        retained = ground_up - gross_insured
        return gross_insured, retained

    exposure[["gross_insured_usd", "retained_usd"]] = exposure["ground_up_loss_usd"].apply(
        lambda x: pd.Series(apply_terms(x))
    )

    # Summary
    valid = exposure.dropna(subset=["ground_up_loss_usd"])
    print("Illustrative insured-loss layer (hypothetical terms only)")
    print(f"Deductible: ${DEDUCTIBLE:,.0f} | Limit: ${LIMIT:,.0f}\n")
    print(valid[["asset_id", "asset_type", "ground_up_loss_usd",
                 "gross_insured_usd", "retained_usd"]].to_string(index=False))
    print()
    print(f"Total ground-up:   ${valid['ground_up_loss_usd'].sum():,.0f}")
    print(f"Total gross insured: ${valid['gross_insured_usd'].sum():,.0f}")
    print(f"Total retained:    ${valid['retained_usd'].sum():,.0f}")


if __name__ == "__main__":
    main()
