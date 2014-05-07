source('readdata.R')

complete <- function(directory, id = 1:332){
    print(paste("Running complete with:", directory, separator=" "))
    fullDataForRange <- createRangedDataframeFromFilesIn(directory, id)
    sum(complete.cases(fullDataForRange))
}