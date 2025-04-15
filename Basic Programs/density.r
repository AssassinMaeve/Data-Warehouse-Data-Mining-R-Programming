set.seed(1234)

# Generate data
x <- rnorm(500)

par(mfrow = c(1, 2))

# Create a histogram
hist(x, freq = FALSE, main = "Histogram and density")

# Calculate density
dx <- density(x)

# Add density
lines(dx, lwd = 2, col = "red")

# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Density")

# Add the data-poins with noise in the X-axis
rug(jitter(x))
