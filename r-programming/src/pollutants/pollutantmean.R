source('readdata.R')

pollutantmean <- function( directory, pollutant, id = 1:332) {
    print(paste("Running polutantmean with:", directory, pollutant, separator=" "))
    fullDataForRange <- createRangedDataframeFromFilesIn(directory, id)
    subsetOfData <- subset(fullDataForRange, !is.na(fullDataForRange[,pollutant]))    
    mean(subsetOfData[,pollutant])
}
