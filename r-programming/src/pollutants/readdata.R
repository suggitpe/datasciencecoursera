createRangedDataframeFromFilesIn <- function(directory, id){
    data <- createSingleDataFrameFromFilesIn(directory, id)
    subset(data, data$ID %in% id)
}

createSingleDataFrameFromFilesIn <- function(directory, id){
    do.call("rbind", createDataframesFromFilesIn(directory, id))
}

createDataframesFromFilesIn <- function(directory, id){
    lapply(readFilesNamesIn(directory, id), read.csv)
}

readFilesNamesIn <- function(directory, id){
    paste(getwd(), "specdata", sprintf('%03d.csv', as.numeric(id)), sep="/")
}