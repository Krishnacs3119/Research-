library(ggplot2)

data <- read.csv("merged_dataset.csv", stringsAsFactors = FALSE)

ggplot(data, aes(x = factor(FinalGrade), fill = factor(FinalGrade))) +
  geom_bar() +
  labs(
    title = "Distribution of Student Academic Performance",
    x = "Final Grade",
    y = "Number of Students"
  ) +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")
