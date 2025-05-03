# R code to find Mean, Median, and Mode for the Un-grouped data using inbuilt functions

# Sample ungrouped data
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 6)

# Calculate the mean using the inbuilt mean() function
mean_value <- mean(data)

# Calculate the median using the inbuilt median() function
median_value <- median(data)

# Calculate the mode using inbuilt functions
calculate_mode <- function(vec) {
  freq_table <- table(vec) # Frequency table
  max_freq <- max(freq_table) # Maximum frequency
  mode_values <- as.numeric(names(freq_table[freq_table == max_freq]))
  return(mode_values)
}
mode_value <- calculate_mode(data)

# Display the results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
