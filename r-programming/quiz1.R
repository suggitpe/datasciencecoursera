data <- read.csv("hw1_data.csv")

# first two rows
firstTwoRows <- head(data, 2)

# count rows
countOfRows <- nrow(data)

# last two rows
lastTwoRows<- tail(data, 2)

# print the 47th row
row47 <- data[47,]

# count the number of missing values in the Ozone column
emptyRowCount <- nrow(subset(data, is.na(data$Ozone)))

# calc mean of the ozone column
meanOfOzone <- mean(subset(data, !is.na(data$Ozone))$Ozone)

# calc mean of Solar where Ozone > 31 and Temp > 90
meanOfSolar <- mean(subset(data, !is.na(Solar.R) & Ozone > 31 & Temp > 90)$Solar.R)