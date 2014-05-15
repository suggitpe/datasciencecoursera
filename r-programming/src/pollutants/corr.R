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
        toCorr <- subset(fullDataForRange, ID == id)
        print(paste("Correlating for", id))
        cor(toCorr$nitrate, toCorr$sulfate, use="complete.obs")   
    }
    
    createListOfIdsAboveThreshold <- function(data, threshold){
        completeCases <- completeDataFrom(fullDataForRange)
        subset(completeCases, completeCases$nobs > threshold)$id
    }
    
    fullDataForRange <- createRangedDataframeFromFilesIn(directory)
    idsAboveThreshold <- createListOfIdsAboveThreshold(fullDataForRange, threshold)
    
    if(length(idsAboveThreshold) > 0){
        sapply(idsAboveThreshold, calculateCorrelationFor)                
    }
    else{
        print("No observations above the threshold")
        vector('numeric')
    }
        
}
