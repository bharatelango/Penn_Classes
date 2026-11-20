# Question 5

df <- read.csv("STAT_4310/Files/survey_response.csv")

fit <- lm(log(df$ResponseRate) ~ I(1/df$Incentive))

summary(fit)

confint(fit, level = 0.95)
