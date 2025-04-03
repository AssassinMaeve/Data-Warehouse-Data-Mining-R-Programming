library(dplyr)

employee = data.frame(
    emp_id = c(1:3),
    emp_name = c("Rick","Dan","Michelle"),
    salary = c(623.3,515.2,611.0),
    department = c("HR", "Finance", "IT"),
    stringsAsFactors = FALSE
)

print(employee)

# Filter employee with salary greater than 600
highSalary = filter(employee, salary > 600)

# Filter employees in either HR or IT department
hr_it = filter(employee, department %in% c("HR", "IT"))
print(hr_it)

hr_finance_employees = employee %>% filter(department == "HR" | department == "IT")
print(hr_finance_employees)

# Star Wars Data Set
starwars
print(starwars)

# Filter Rows Equal to Some Value
starwars %>% filter(species == "Droid")

# Filter Rows Using 'and'
starwars %>% filter(species == "Droid" & eye_color == "yellow")

# Filter Rows Using 'or'
starwars %>% filter(species == "Droid" | eye_color == "yellow")

# Filter Rows with values in a list
starwars %>% filter(eye_color %in% c("blue","yellow","red"))

# Filter Rows using less than or greater than
starwars %>% filter (height >= 250)

# Filter Rows where height is between 200 & 220
starwars %>% filter (height > 200 & height <220)

# Filter rows where height is above the average height
starwars %>% filter(height > mean(height, na.rm = TRUE))

# Filter by one criterion
filter(starwars, species == "Human")
filter(starwars, mass > 1000)

# Filter by multiple criteria within a single logical expression
filter(starwars, hair_color == "none" & eye_color == "black")
filter(starwars, hair_color == "none" | eye_color == "black")

# When multiple expression are used they are combined using the "," operator
filter(starwars, hair_color == "none", eye_color == "black")

# Filter rows where 'mass' is greater the the global average
starwars %>% filter(mass > mean(mass, na.rm = TRUE))

# Where as this keep rows with 'mass' greater than the gender average
starwars %>% group_by(gender) %>% filter(mass > mean(mass, na.rm = TRUE))
