# R code to calculate lower and upper quartiles, third decile, and 20th percentile

# Class intervals and frequencies
class_intervals <- c(0, 5, 10, 15, 20, 25) # Class intervals
frequencies <- c(7, 18, 25, 30, 20)       # Frequencies

# Calculate cumulative frequencies
cumulative_frequencies <- cumsum(frequencies)

# Total frequency
N <- sum(frequencies)

# Class width
h <- class_intervals[2] - class_intervals[1]

# Function to calculate the value for a given cumulative percentage
calculate_value <- function(cum_percentage) {
  position <- N * cum_percentage
  class_index <- which(cumulative_frequencies >= position)[1]
  L <- class_intervals[class_index] # Lower boundary of the class
  F <- ifelse(class_index == 1, 0, cumulative_frequencies[class_index - 1]) # Cumulative frequency before the class
  f <- frequencies[class_index]    # Frequency of the class
  return(L + ((position - F) / f) * h)
}

# Calculate Q1 (lower quartile, 25th percentile)
Q1 <- calculate_value(0.25)

# Calculate Q3 (upper quartile, 75th percentile)
Q3 <- calculate_value(0.75)

# Calculate D3 (third decile, 30th percentile)
D3 <- calculate_value(0.3)

# Calculate P20 (20th percentile)
P20 <- calculate_value(0.2)

# Display the results
cat("Lower Quartile (Q1):", Q1, "\n")
cat("Upper Quartile (Q3):", Q3, "\n")
cat("Third Decile (D3):", D3, "\n")
cat("20th Percentile (P20):", P20, "\n")