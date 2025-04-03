emp.data<- data.frame(
    emp_id = c(1:3),
    emp_name = c("Rick","Dan","Michelle"),
    salary = c(623.3,515.2,611.0),
    stringsAsFactors = FALSE
)
print(emp.data)
str(emp.data)
head(emp.data)
print(emp.data$emp_name)
print(emp.data[1:3,])

sorted_emp.data <- emp.data[order(emp.data$salary), ]
print(sorted_emp.data)

emp.data$salary <- NULL
print(emp.data)


# Count the number of rows and columns
num_rows <- nrow(emp.data)
num_cols <- ncol(emp.data)
cat("Number of rows:", num_rows, "\n")
cat("Number of columns:", num_cols, "\n")

dept.data <- data.frame(
    emp_id = c(1, 2, 4),
    dept_name = c("HR", "Finance", "IT"),
    stringsAsFactors = FALSE
)
print(dept.data)

# Merge the two dataframes based on the common column 'emp_id'
merged.data <- merge(emp.data, dept.data, by = "emp_id")
print(merged.data)


# Replace missing values in emp.data with 0
emp.data[is.na(emp.data)] <- 0
print(emp.data)


# Apply a function to each row of the dataframe
# Example: Calculate the sum of each row (excluding non-numeric columns)
row_sums <- apply(emp.data[, sapply(emp.data, is.numeric)], 1, sum)
print(row_sums)
