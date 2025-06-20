# Create small data
mydata <- data.frame(
  Name = c("A", "B", "C", "D", "E"),
  Age = c(25, 30, 35, 28, 40),
  Salary = c(50000, 60000, 55000, 52000, 70000),
  Dept = c("HR", "IT", "HR", "Finance", "IT"),
  Exp = c(2, 5, 4, 3, 8)
)

# 1. Histogram of Age
hist(mydata$Age)

# 2. Boxplot of Salary
boxplot(mydata$Salary)

# 3. Scatter Plot (Age vs Salary)
plot(mydata$Age, mydata$Salary)

# 4. Bar Plot (count of Dept)
barplot(table(mydata$Dept))

# 5. Pie Chart (Dept distribution)
pie(table(mydata$Dept))
