source('readdata.R')

complete <- function(directory, id = 1:332){
    print(paste("Running complete with:", directory, separator=" "))
    data <- createRangedDataframeFromFilesIn(directory, id)
    dataArray <- tapply(complete.cases(data), data$ID, FUN=sum)
    data.frame(id=id, nobs=dataArray)
}

