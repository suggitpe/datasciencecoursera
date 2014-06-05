source('readdata.R')

rankall <- function(outcome, num = "best") {
    
    data <- readValidateAndSortDataFor(outcome)
    data <- subset(data, !is.na(data[getColumnNumberFor(outcome)]))
    states <- levels(factor(data$state))
    
    rawData <- sapply(states, getHospitalForRank, data, num)
    
    data.frame(hospital=rawData, state=names(rawData))
    
}

getHospitalForRank <- function(singleState, data, num){
    stateData <- subset(data, data$state == singleState)
    rowNumber <- decodeNumber(num, data)
    if(rowNumber > nrow(stateData)){
        NA
    }
    else{
        stateData[rowNumber, 1]
    }
}

decodeNumber <- function(num, data){
    if(num == "best"){
        1
    }
    else if (num == "worst"){
        nrow(data)
    }
    else{
        num
    }
}