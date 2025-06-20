age <- c(30,32,35,40,48,50,52,54,56,57)
sickdays <- c(1,2,5,2,6,5,7,8,9,11)

model <- lm(sickdays ~ age)
plot(age, sickdays)
abline(model,col="red")
