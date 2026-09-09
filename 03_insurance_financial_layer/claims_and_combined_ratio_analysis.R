# claims_and_combined_ratio_analysis.R
#
# Visualizes real NIA (2026) hydropower insurance market data:
# claims settlement time-to-close and combined ratio.
# Source: Nepal Insurance Authority, "Hydropower Insurance in Nepal" (May 2026).

library(ggplot2)
library(dplyr)

# --- Claims settlement time-to-close (median days), by policy type ---
tat <- data.frame(
  policy_type = c("CAR", "EAR"),
  median_days = c(298, 372)
)

ggplot(tat, aes(x = policy_type, y = median_days, fill = policy_type)) +
  geom_col(width = 0.5) +
  labs(
    title = "Median claims settlement time by policy type",
    subtitle = "Survey/loss-adjustment activity accounts for ~62-75% of this time",
    x = NULL, y = "Median days to settlement",
    caption = "Source: Nepal Insurance Authority, 2026 (n = 121 paid claims)"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

ggsave("claims_settlement_time.png", width = 6, height = 4)

# --- Combined ratio ---
combined_ratio <- data.frame(
  measure = c("Gross combined ratio", "Net combined ratio"),
  value_pct = c(146, 108)
)

ggplot(combined_ratio, aes(x = measure, y = value_pct, fill = measure)) +
  geom_col(width = 0.5) +
  geom_hline(yintercept = 100, linetype = "dashed", color = "red") +
  annotate("text", x = 1.5, y = 103, label = "Break-even (100%)", color = "red", size = 3) +
  labs(
    title = "Hydropower insurance combined ratio",
    subtitle = "Above 100% indicates underwriting losses even after reinsurance recoveries",
    x = NULL, y = "Combined ratio (%)",
    caption = "Source: Nepal Insurance Authority, 2026 (5-year average, excl. incomplete years; 5% expense ratio assumed)"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

ggsave("combined_ratio.png", width = 6, height = 4)
