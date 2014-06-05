source('rankhospital.R')

rankall <- function(outcome, num = "best") {
    
    data <- readValidateAndSortDataFor(outcome)
    data <- subset(data, !is.na(data[getColumnNumberFor(outcome)]))
    
}