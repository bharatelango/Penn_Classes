# Question 3

latency <- read.csv("STAT_4310/Files/ai_latency.csv")

# µ = Average response latency
# H0: µ ≥ 1000
# H1: µ < 1000

(mean(latency$latency_ms) - 1000)/(sd(latency$latency_ms)/sqrt(60))
# 2.417
qnorm(0.05)
# -1.645

# 2.417 ≤ -1.645 is NOT true, therefore we fail to reject H0

# Question 6

capsule <- read.csv("STAT_4310/Files/capsule.csv")

# σ = Standard deviation of capsule content
# H0: σ ≤ 0.25
# H1: σ > 0.25

# Checking Normality
qqnorm(capsule$capsule_content_mg)
qqline(capsule$capsule_content_mg)

# Chi-squared
((25 - 1)*sd(capsule$capsule_content_mg)^2)/(0.25^2)
# 12.384

qchisq(0.95, df = 24)
# 36.415

# 12.384 ≥ 36.415 is NOT true, therefore we fail to reject H0