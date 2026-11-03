# Load the data (make sure stocks.txt is in your working directory)
data <- read.table("STAT_4310/Files/stocks.txt", header = TRUE)

# Assign variables based on the problem description
company_return <- data[, 2]  # y-axis
market_return <- data[, 1]   # x-axis

#a)
plot(x = market_return, y = company_return)

#b)
correlation <- cor(market_return, company_return)
print(correlation)

#c)
# Fit the linear model
model <- lm(company_return ~ market_return)

# Create a new dataframe with the given market return
new_data <- data.frame(market_return = 0.8)

# Predict the company's stock return
return <- predict(model, newdata = new_data)
print(return)
