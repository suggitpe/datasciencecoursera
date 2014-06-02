source('readdata.R')

best <- function(state, outcome) {
    data <- validateData(readData(), state, outcome)
    data <- sortDataFor(data, outcome)
    data[1,1]    
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