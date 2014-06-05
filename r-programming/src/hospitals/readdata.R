retrieveValidatedSingleStateDataFor <- function(state, outcome){
    
    data <- readValidateAndSortDataFor(outcome)
    if(!(state %in% data[, "state"])){
        stop("invalid state")
    }
    removeAllOtherStateData(data, state)
}

readValidateAndSortDataFor <- function(outcome){
    
    readData <- function(){
        data <- read.csv('data/outcome-of-care-measures.csv', colClasses='character')
        data <- data[,c(2,7,11,17,23)]
        names(data) <- c('name', 'state', 'heart attack', 'heart failure', 'pneumonia')
        
        data[, c(3,4,5)] <- suppressWarnings(sapply(data[, c(3,4,5)], as.numeric))
        data
    }
        
    data <- data <- readData()
    if(!(outcome %in% names(data))){
        stop("invalid outcome")
    }
    data[order(data[2],data[getColumnNumberFor(outcome)], data[1]),]        
}

removeAllOtherStateData <- function(data, stateToKeep){
    subset(data, data$state == stateToKeep)        
}

getColumnNumberFor <- function(outcome){
    if(outcome == "heart attack"){
        3
    }
    else if(outcome == "heart failure"){
        4
    }
    else if(outcome == "pneumonia"){
        5
    }
}