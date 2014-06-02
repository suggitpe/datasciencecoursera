best <- function(state, outcome) {
    data <- validateData(readData(), state, outcome)
    data <- sortDataFor(data, outcome)
    data[1,1]    
}

readData <- function(){
    data <- read.csv('data/outcome-of-care-measures.csv', colClasses='character')
    data <- data[,c(2,7,11,17,23)]
    names(data) <- c('name', 'state', 'heart attack', 'heart failure', 'pneumonia')
    
    data[, c(3,4,5)] <- sapply(data[, c(3,4,5)], as.numeric)
    data
}

validateData <- function(dataToValidate, theState, theOutcome){
    
    if(!(theOutcome %in% names(dataToValidate))){
        stop("invalid outcome")
    }
    
    if(!(theState %in% dataToValidate[, "state"])){
        stop("invalid state")
    }
    
    removeAllOtherStateData(dataToValidate, theState)
}

removeAllOtherStateData <- function(data, stateToKeep){
    data <- subset(data, data$state == stateToKeep)
    data
}

sortDataFor <- function(data, outcome){
    if(outcome == "heart attack"){
        data[order(data[3], data[1]),]
    }
    else if(outcome == "heart failure"){
        data[order(data[4], data[1]),]
    }
    else if(outcome == "pneumonia"){
        data[order(data[5], data[1]),]
    }
    
}