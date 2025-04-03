# Using the list function
list1 <- list("Sam",21,5.4)
print(list1)

# Accessing the elements in the list
list2 <- list(matrix(c(4,5,6,7,8,9), nrow = 2), c("jan","feb","mar"))
print(list2)

# Accessing the specific elements
print(list2[[1]])

# Accessing the specific elements
print(list2[[2]]) 

# Joining the list & using c()
empId <- c(1,2,3,4)
empName <- c("Maeve","Sam","Graham")
numberOfEmp <- 4

empList <- list(empId,empName,numberOfEmp)
print(empList)

# Joining the list using c()
empList2 <- c(empId,empName,numberOfEmp)
print(empList2)

# Finding the Length
length(empId)

# Checking if a element exists
print("Maeve"%in%empName)           # Gives a boolean Value

# Adding an element to the end of the list
empName <- append(empName,"Samuel")


# Adding an element to a specific point
empName <- append(empName,"Mark",after = 1)
print(empName)

# Removing elements from the list
empName <- empName[-1]
print(empName)

# Range of Index
print(empName[1:3])

