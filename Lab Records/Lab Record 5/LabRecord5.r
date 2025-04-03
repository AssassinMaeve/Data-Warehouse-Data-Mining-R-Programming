# R code to add data to a text file and visualize using any 5 plots

# Set the working directory
setwd("c:/College/R Programming/Lab Records/Lab Record 5")

# Step 1: Write data to a text file
data <- data.frame(
  Name = c("Maeve", "Manasa", "Gavin", "Bri", "Anu", "Rashmita", "Carol"),
  Color = c("Red", "Green", "Black", "Blue", "Blue", "Green", "Red"),
  Age = c(25, 30, 22, 28, 24, 29, 26)
)
write.table(data, "LabRecord5.txt", sep = "\t", row.names = FALSE, quote = FALSE)

# Step 2: Import data from the text file
data <- read.table("LabRecord5.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

# Print the imported data and column names for debugging
print(data)
print(colnames(data))

# Load ggplot2 for visualization
library(ggplot2)

# Step 3: Visualize the data

# 1. Bar Plot: Count of Colors
ggplot(data, aes(x = Color, fill = Color)) +
  geom_bar() +
  labs(title = "Bar Plot of Colors", x = "Color", y = "Count") +
  theme_minimal()

# 2. Pie Chart: Proportion of Colors
color_counts <- as.data.frame(table(data$Color))
ggplot(color_counts, aes(x = "", y = Freq, fill = Var1)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Chart of Colors", fill = "Color")

# 3. Histogram: Age Distribution
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Age Distribution", x = "Age", y = "Frequency")

# 4. Scatter Plot: Age vs Index
data$Index <- 1:nrow(data)  # Add an index column
ggplot(data, aes(x = Index, y = Age, color = Color)) +
  geom_point(size = 3) +
  labs(title = "Scatter Plot of Age by Index", x = "Index", y = "Age")

# 5. Boxplot: Age Distribution by Color
ggplot(data, aes(x = Color, y = Age, fill = Color)) +
  geom_boxplot() +
  labs(title = "Boxplot of Age by Color", x = "Color", y = "Age")
