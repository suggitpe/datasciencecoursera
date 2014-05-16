source('readdata.R')
source('complete.R')

corr <- function(directory, threshold=0){
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    
    calculateCorrelationFor <- function(id){
        toCorr <- subset(fullData, ID == id)
        cor(toCorr$nitrate, toCorr$sulfate, use="complete.obs")   
    }
    
    createListOfIdsAboveThreshold <- function(data, threshold){
        completeCases <- completeDataFrom(fullDataForRange)
        subset(completeCases, completeCases$nobs > threshold)$id
    }
    
    fullData <- createRangedDataframeFromFilesIn(directory)
    idsAboveThreshold <- createListOfIdsAboveThreshold(fullData, threshold)
    print(paste("Correlating for total observations of", length(idsAboveThreshold)))
    if(length(idsAboveThreshold) > 0){
        sapply(idsAboveThreshold, calculateCorrelationFor)                
    }
    else{
        print("No observations above the threshold")
        vector('numeric')
    }
        
}
