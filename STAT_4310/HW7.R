# Question 1

model1 <- lm(iris$Sepal.Length ~ iris$Sepal.Width + iris$Petal.Length + iris$Petal.Width)

summary(model1)

model1_red <- lm(iris$Sepal.Length ~ iris$Petal.Length)

summary(model1_red)

# F test for checking whether if Septal Length and Width are important predictors

anova(model1, model1_red)

#====================================================================================

# Question 2

data2 <- read.table("http://www1.aucegypt.edu/faculty/hadi/RABE5/Data5/P088.txt")


#====================================================================================



# Question 4

car <- read.csv("STAT_4310/Files/Car89.csv")

View(car)
