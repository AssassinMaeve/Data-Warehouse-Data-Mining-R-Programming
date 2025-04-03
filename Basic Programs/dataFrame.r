# Create the data frame
empData <- data.frame(
    empId = c(1:5),
    empName = c("Rick", "Dan","Michelle", "Ryan", "Gary"),
    salary = c(623.3, 515.2, 611,729,543.25),

    startDate = as.Date( c("2012-01-01","2013-05-06","2024-05-06","2013-05-10","2024-05-05")),
    stringAsFactors = FALSE
)

# Displaying the data frame
print(empData)

# Displaying the empData Structure
str(empData)

summary(empData)

result <- data.frame(empData$empName , empData$salary)
print(result)

# Extract first 2 rows and columns
result <- empData[1:2,3:4]
print(result)

# Extract 3rd & 5th row with 2nd and 4th column
result <- empData[c(3,5),c(2,4)]
print(result)

# Adding new column and row to the existing data frame
empData$dept <- c("IT", "Operations", "IT", "HR", "Finance")
v <- empData
print(v)

# Add new column Designation to empData dataframe
empData$Designation <- c("Manager","Empolyee","Employee","Employee","Employee")
print(empData)

# Create a second data frame
empNewData <- data.frame(
    empId = c(1:5),
    empName = c("Maeve", "Kirk","James", "Ria", "Bri"),
    salary = c(6323.3, 5125.2, 6121,7129,5213.25),
    dept = c("IT", "Operations", "IT", "HR", "Finance"),
    Designation = c("Manager","Empolyee","Employee","Employee","Employee"),
    startDate = as.Date( c("2012-01-01","2013-05-06","2024-05-06","2013-05-10","2024-05-05")),
    stringAsFactors = FALSE
)

# Add rows using the rbind() command to the empData
empFinalData <- rbind(empData,empNewData)
print(empFinalData)

# Joining Columns and Rows in a Data Frame
city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL", "WA", "CT", "CO")
zipcode <- c(33602,65821,23515,26328)

#Combine above vector into one data frame
address <- cbind(city,state,zipcode)

#Print a Header
cat("######### The First Data Frame \n")

# Print the Data Frame
print(address)

newAddress <- data.frame(
    city = c("Lowry","Charlotte"),
    state = c("CT", "CO"),
    zipcode = c(23515,26328),
    stringAsFactors = FALSE
)

#Print a Header
cat("### The Second Data Frame\n")

# Print the Data Frame
print(newAddress)

# Combine above vector into one data frame
allAddress <- cbind(address,newAddress)
print(allAddress)

# ---------------------------------------------------------------

# Merging data frames

library(MASS)
merged.Pima <- merge(
    x = Pima.te,
    y = Pima.tr,
    by.x = c("bp", "bmi"),
    by.y = c("bp", "bmi"),
)

print(merged.Pima)
nrow(merged.Pima)

# ---------------------------------------------------------------

# Melting & Casting

library(MASS)
library(reshape2)
print(ships)

molten.ship <- melt(ships, id = c("type","year"))
print(molten.ship)

# Cast the Molten Data
recasted.ship <- dcast(molten.ship, type+year~variable,sum)
print(recasted.ship)
