source('readdata.R')

complete <- function(directory, id = 1:332){
    print(paste("Running complete with:", directory, separator=" "))
    data <- createRangedDataframeFromFilesIn(directory, id)
    dataSummary <- tapply(complete.cases(data), data$ID, FUN=sum)
    key <- data.frame(id=names(dataSummary), data=dataSummary)
    data.frame(id=id, nobs=key$data[match(id, key$id)])
}

