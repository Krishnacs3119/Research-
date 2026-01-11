library(ggplot2)

data <- read.csv("merged_dataset.csv", stringsAsFactors = FALSE)

ggplot(data, aes(x = StudyHours, y = ExamScore, color = Gender)) +
  geom_point(alpha = 0.6) +
  labs(
    title = "Study Hours vs Exam Score by Gender",
    x = "Study Hours",
    y = "Exam Score",
    color = "Gender"
  ) +
  theme_minimal()
