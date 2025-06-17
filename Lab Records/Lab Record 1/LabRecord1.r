# Vector: a sequence of elements of the same type
v <- c(1, 2, 3, 4, 5)
print("Vector:")
print(v)

# List: a collection of elements of different types
my_list <- list(name = "Alice", age = 25, scores = c(90, 88, 95))
print("List:")
print(my_list)

# Matrix: 2D data structure with elements of the same type
mat <- matrix(1:9, nrow = 3, ncol = 3)
print("Matrix:")
print(mat)

# Array: multi-dimensional data structure
arr <- array(1:12, dim = c(2, 3, 2))
print("Array:")
print(arr)

# Data Frame: table-like structure with columns of different types
df <- data.frame(
  Name = c("John", "Emma", "Sophia"),
  Age = c(28, 22, 25),
  Score = c(85, 90, 88)
)
print("Data Frame:")
print(df)

# Factor: used for categorical data
colors <- factor(c("Red", "Blue", "Green", "Red", "Blue"))
print("Factor:")
print(colors)
print("Levels:")
print(levels(colors))
