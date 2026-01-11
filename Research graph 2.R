library(ggplot2)

data <- read.csv("merged_dataset.csv", stringsAsFactors = FALSE)

gender_data <- table(data$Gender)
gender_df <- as.data.frame(gender_data)

ggplot(gender_df, aes(x = "", y = Freq, fill = Var1)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(
    title = "Gender Distribution of Students",
    fill = "Gender"
  ) +
  theme_void()

