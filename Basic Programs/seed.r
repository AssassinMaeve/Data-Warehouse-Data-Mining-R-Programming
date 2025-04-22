rnorm(5)
rnorm(5)

# R program to create repeatable data sets

#Setting Seeds
set.seed(10)

#Creating data set of random values
x <- rnorm(15)
paste('The random values of x are:', x)

#Setting Seeds again for another data set
set.seed(10)

#Creating another data set of random values
y <- rnorm(15)
paste('The random values of y are:', y)

#Checking if both are equal
paste('The identical values of x and y are:', identical(x, y))


