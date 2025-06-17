# Employee data
emp1 <- data.frame(ID = 101, Name = "Alice", Age = 30)
emp2 <- data.frame(ID = 102, Name = "Bob", Age = 28)

# Student data
stu1 <- data.frame(ID = 201, Name = "Carol", Marks = 85)
stu2 <- data.frame(ID = 202, Name = "David", Marks = 90)

# Row bind employee records (same columns)
employee_data <- rbind(emp1, emp2)
print("Combined Employee Data:")
print(employee_data)

# Row bind student records (same columns)
student_data <- rbind(stu1, stu2)
print("Combined Student Data:")
print(student_data)

# Adding department column to employees
departments <- c("HR", "IT")
employee_combined <- cbind(employee_data, Department = departments)
print("Employee Data with Department:")
print(employee_combined)

# Adding grade column to students
grades <- c("A", "A+")
student_combined <- cbind(student_data, Grade = grades)
print("Student Data with Grade:")
print(student_combined)

