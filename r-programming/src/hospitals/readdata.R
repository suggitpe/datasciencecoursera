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