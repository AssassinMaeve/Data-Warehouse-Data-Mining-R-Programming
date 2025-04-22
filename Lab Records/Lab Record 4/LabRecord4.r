# Implement R program using functions to find the mean, median, standard deviation of vector (do not use built in functions) input the vector elements from the keyboard.

# Function to calculate the mean
calculate_mean <- function(vec) {
  sum <- 0
  for (val in vec) {
    sum <- sum + val
  }
  return(sum / length(vec))
}

# Function to calculate the median
calculate_median <- function(vec) {
  sorted_vec <- sort(vec)
  n <- length(sorted_vec)
  if (n %% 2 == 0) {
    # If even, average the two middle values
    return((sorted_vec[n / 2] + sorted_vec[n / 2 + 1]) / 2)
  } else {
    # If odd, return the middle value
    return(sorted_vec[(n + 1) / 2])
  }
}

# Function to calculate the standard deviation
calculate_sd <- function(vec) {
  mean <- calculate_mean(vec)
  sum_sq_diff <- 0
  for (val in vec) {
    sum_sq_diff <- sum_sq_diff + (val - mean)^2
  }
  variance <- sum_sq_diff / (length(vec) - 1) # Sample standard deviation
  return(sqrt(variance))
}

# Input vector elements from the keyboard
cat("Enter the vector elements separated by spaces: ")
input <- scan(what = numeric())

# Calculate and display the results
cat("Mean:", calculate_mean(input), "\n")
cat("Median:", calculate_median(input), "\n")
cat("Standard Deviation:", calculate_sd(input), "\n")
