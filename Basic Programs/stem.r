data <- c(12, 15, 16, 21, 24, 29, 30, 31, 32, 33, 
          45, 46, 49, 50, 52, 58, 60, 63, 64, 65)

stem(data,            # Numeric vector
     scale = 1,    # Length of the plot
     width = 80,   # Width of the plot
     atom = 1e-08) # Tolerance parameter

stem(data)
stem(data, scale = 2)
stem(data, scale = 3)
stem(data, scale = 4)
