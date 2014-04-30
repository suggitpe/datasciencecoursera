# R cheat sheet

## Why
This summarises the key things you need to remember for R.

## Package Management
Packages are used to extend R as with any other library mechanism
* `a <- available.packages()` to get the list of all the packages in CRAN
* `install.packages("slidify")` to install a package (in this case slidify)
* `install.packages(c("slidify", "devtools"))` to install a number of packages
* bioconductor is another source but you need to `source("http://...")` then `biocLite()` then `biocLite(c("pkg", "pkg"))`
* `library(slidify)` to load a package (need to load before using)
* `search()` to list all of the functions now available to you
* `getwd()` to get the working directory
* `setwd()` to change the working directory

## Simple Data Frames
* `data <- read.csv("foo.csv")` to read a CSV file into a data frame
* `nrow(data)` & `ncol(data)` to get the number of rows/columns in the data frame
* `head(data)` & `tail(data)` to get the head and tail in the data frame
* `attributes(data)' to see the data frame attributes
* `data$foo` to see the column foo as a list .. same as data[[1]] where foo is the first
* `data[1]` to create a new data frame with just column 1 also `data[1:3]` to create a data frame with first three columns
* `data$foo[20]` to get the 20th element in the foo column
* `data[1:2, ]` to get rows 1 to 2 listed
* `data[, 1]` to get column 1 listed
* thus `data[,1][47]` is then the same as `data$foo[47]`
* `length(data$foo[is.na(data$foo)])` to find the number of NAs in a given column in a data frame
* `mean(data$foo[!is.na(data$foo)])` to get the mean of the valid numbers in the group
* `mean(subset(data, !is.na(data$foo) & data$foo > 31 & data$bar > 90)$baz)` to get the mean value of Baz where foo is > 31 and bar > 90


