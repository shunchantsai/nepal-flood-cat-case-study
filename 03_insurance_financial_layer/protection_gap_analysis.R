# protection_gap_analysis.R
#
# The single most important chart in the insurance module: how much of the
# real economic loss is actually covered by insurance claims filed so far.
# All three figures are real, sourced from the underlying research
# (see data/sources.md) — none of these are synthetic.

library(ggplot2)

protection_gap <- data.frame(
  category = factor(
    c("Insured claims filed", "Govt. estimated total loss", "Estimated reconstruction need"),
    levels = c("Insured claims filed", "Govt. estimated total loss", "Estimated reconstruction need")
  ),
  usd_billions = c(0.171, 2.6, 4.5)  # reconstruction need shown at midpoint of $4-5B range
)

ggplot(protection_gap, aes(x = category, y = usd_billions, fill = category)) +
  geom_col(width = 0.55) +
  geom_text(aes(label = paste0("$", usd_billions, "B")), vjust = -0.4) +
  labs(
    title = "The protection gap: insured claims vs. total loss vs. reconstruction need",
    subtitle = "Insured claims represent roughly 6-7% of estimated total direct loss",
    x = NULL, y = "US$ billions",
    caption = "Sources: Nepal insurance industry filings (end-Aug 2026); government loss estimate; reconstruction need estimate"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

ggsave("protection_gap.png", width = 6, height = 4)
