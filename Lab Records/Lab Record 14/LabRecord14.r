# R code to find Mean, Median, and Mode for the Grouped data

# Class intervals and frequencies
lower <- c(0, 10, 20, 30, 40)
upper <- c(10, 20, 30, 40, 50)
freq <- c(5, 8, 15, 10, 2)

# Midpoints
mid <- (lower + upper) / 2

# Total frequency
N <- sum(freq)

# Mean
mean_val <- sum(mid * freq) / N

# Cumulative frequency
cum_freq <- cumsum(freq)

# Median
med_class <- which(cum_freq >= N / 2)[1]
L <- lower[med_class]
F <- ifelse(med_class == 1, 0, cum_freq[med_class - 1])
f <- freq[med_class]
h <- upper[med_class] - lower[med_class]
median_val <- L + ((N / 2 - F) / f) * h

# Mode
mod_class <- which.max(freq)
Lm <- lower[mod_class]
f1 <- freq[mod_class]
f0 <- ifelse(mod_class == 1, 0, freq[mod_class - 1])
f2 <- ifelse(mod_class == length(freq), 0, freq[mod_class + 1])
mode_val <- Lm + ((f1 - f0) / ((2 * f1) - f0 - f2)) * h

# Results
cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")
