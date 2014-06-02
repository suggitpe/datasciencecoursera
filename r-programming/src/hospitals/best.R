source('readdata.R')

best <- function(state, outcome) {
    data <- readAndSortDataFor(state, outcome)
    data[1,1]    
}



