# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 5, 4, 5)

# Linear regression
model <- lm(y ~ x)

# Print regression equation
cat("Regression Equation: y =", round(coef(model)[1], 2), "+", round(coef(model)[2], 2), "* x\n")

# Summary of the model (optional)
summary(model)

# Scatter plot with regression line
plot(x, y, main = "Scatter Plot with Regression Line", xlab = "X", ylab = "Y", pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
