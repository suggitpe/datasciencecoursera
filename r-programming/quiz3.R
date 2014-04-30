library("datasets")
data(iris)
data(mtcars)

q1 <- tapply(iris$Sepal.Length, iris$Species, FUN = mean, simplify = TRUE)

q2 <- apply(iris[,1:4], 2, mean)

q3 <- sapply(split(mtcars$mpg, mtcars$cyl), mean)

q4data <- sapply(split(mtcars$hp, mtcars$cyl), mean)
q4 <- q4data[3] - q4data[1]

# q4 can also be written as the following
foo <- split(mtcars, mtcars$cyl)
bar1 <- lapply(foo, function(s) colMeans(s["hp"]))

# or
bar2 <- sapply(foo, function(s) colMeans(s["hp"]))

q5 <- "Execution of 'ls' will suspend at the beginning of the function and you will be in the browser"