source('ReadData.R')

complete <- function(directory, id = 1:332){
    print(paste("Running complete with:", directory, separator=" "))
    fullDataForRange <- extractSubsetDataFrom(directory, id)
    subsetOfData <- fullDataForRange[complete.cases(fullDataForRange),]
    nrow(subsetOfData)
}