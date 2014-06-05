source('readdata.R')

rankhospital <- function(state, outcome, num = "best") {
    data <- retrieveValidatedSingleStateDataFor(state, outcome)
    getNameOfHospitalFor(data, outcome, num)
}

getNameOfHospitalFor <- function(data, outcome, rowNumber){
    data <- subset(data, !is.na(data[getColumnNumberFor(outcome)]))
    findHospitalAt(rowNumber, data)
}

findHospitalAt <- function(rowNumber, data){
    if(rowNumber == "best"){
        data[1,1]
    }
    else if(rowNumber == "worst"){
        data[nrow(data),1]
    }
    else if(rowNumber > nrow(data)){
        NA
    }
    else{
        data[rowNumber,1]
    }
}