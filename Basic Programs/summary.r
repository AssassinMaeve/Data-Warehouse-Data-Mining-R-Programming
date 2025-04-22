library("psych")

# Create a Dataframe

data = data.frame(id = c(1,2,3,4,5),
                   name = c("Sam","Graham","Maeve","Samuel","Mark"),
                   age = c(21,22,23,24,25),
                   height = c(5.4,5.5,5.6,5.7,5.8))

# Print Dataset
print(data)

# Get the summary table
summary(data)
