source('readdata.R')

best <- function(state, outcome) {
    data <- retrieveValidatedSingleStateDataFor(state, outcome)
    data[1,1]    
}



