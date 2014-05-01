pollutantmean <- function( directory, pollutant, id = 1:332) {
    print(c(directory, pollutant, getwd()))
    fullData <- extractDataFrom(directory)
    subsetOfData <- subset(fullData, !is.na(fullData[,pollutant]) & fullData$ID %in% id)    
    mean(subsetOfData[,pollutant])
}

extractDataFrom <- function(directory){
    csvFiles <- list.files(directory, full.names=TRUE)
    dataFrameList <- lapply(csvFiles, read.csv)    
    do.call("rbind", dataFrameList)
}
