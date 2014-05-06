extractDataFrom <- function(directory){
    csvFiles <- list.files(directory, full.names=TRUE)
    dataFrameList <- lapply(csvFiles, read.csv)    
    do.call("rbind", dataFrameList)
}

extractSubsetDataFrom <- function(directory, id){
    fullData <- extractDataFrom(directory)
    subset(fullData, fullData$ID %in% id)
}