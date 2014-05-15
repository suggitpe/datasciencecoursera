source('readdata.R')

complete <- function(directory, id = 1:332){
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    
    print(paste("Running complete with:", directory, separator=" "))
    data <- createRangedDataframeFromFilesIn(directory, id)
    completeDataFrom(data, id)
}

completeDataFrom <- function(data, id = 1:332){
    dataSummary <- tapply(complete.cases(data), data$ID, FUN=sum)
    key <- data.frame(id=names(dataSummary), data=dataSummary)
    data.frame(id=id, nobs=key$data[match(id, key$id)])
}

