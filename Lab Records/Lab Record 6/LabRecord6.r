# R program to demonstrate the use of cumulative functions
require(dplyr)

# Sample vector
vec <- c(2, 4, 6, 8, 10)

# Cumulative sum
cat("Cumulative Sum:\n")
print(cumsum(vec))

# Cumulative product
cat("Cumulative Product:\n")
print(cumprod(vec))

# Cumulative maximum
cat("Cumulative Maximum:\n")
print(cummax(vec))

# Cumulative minimum
cat("Cumulative Minimum:\n")
print(cummin(vec))

# Example with logical cumulative function
logical_vec <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
cat("Cumulative Logical OR:\n")
print(cumany(logical_vec))

cat("Cumulative Logical AND:\n")
print(cumall(logical_vec))