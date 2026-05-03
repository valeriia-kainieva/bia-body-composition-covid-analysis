data <- read.csv("data_bia.csv")

names(data)
str(data)

cor(data$bmi, data$fat)
cor(data$fat, data$water)
cor(data$bmi, data$water)

library(ggplot2)

ggplot(data, aes(x = bmi, y = fat)) +
  geom_point() +
  geom_smooth(method = "lm", color = "green") +
  labs(title = "BMI vs Body Fat",
       x = "BMI",
       y = "Body Fat") +
  theme_minimal()

ggplot(data, aes(x = bmi, y = water)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue") +
  labs(title = "BMI vs Body Water",
       x = "BMI",
       y = "Body Water") +
  theme_minimal()

ggplot(data, aes(x = fat, y = water)) +
  geom_point() +
  geom_smooth(method = "lm", color = "orange") +
  labs(title = "Body Fat vs Body Water",
       x = "Body Fat",
       y = "Body Water") +
  theme_minimal()

cor.test(data$bmi, data$fat)
cor.test(data$bmi, data$water)
cor.test(data$fat, data$water)
