# Code
wnba <- read.csv("STAT_4310/Files/wnba.csv")

# 4a
mean(wnba$Height)

# 4b
sd(wnba$Height)

# 4c
hist(wnba$Height)

# 4d
boxplot(wnba$Height, wnba$Weight, 
        names = c("Height", "Weight"))

# 4e
z <- (wnba$Height - mean(wnba$Height))/sd(wnba$Height)

qqnorm(z)
abline(a = 0, b = 1, col = "red")

