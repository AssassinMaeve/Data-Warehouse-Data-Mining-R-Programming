# Data
ages <- c(13,15,16,19,20,21,22,22,25,25,25,25,30,33,33,35,35,35,35,36,40,45,46,52,70)

# a) Boxplot
boxplot(ages, main = "Boxplot of Ages", col = "lightblue")

# b) Five-number summary
summary <- fivenum(ages)
cat("Five-number summary:", summary, "\n")

# c) Interquartile Range (IQR)
iqr <- IQR(ages)
cat("Interquartile Range (IQR):", iqr, "\n")
