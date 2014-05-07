createRangedDataframeFromFilesIn <- function(directory, id){
    data <- createSingleDataFrameFromFilesIn(directory)
    subset(data, data$ID %in% id)
}

createSingleDataFrameFromFilesIn <- function(directory){
    do.call("rbind", createDataframesFromFilesIn(directory))
}

createDataframesFromFilesIn <- function(directory){
    lapply(readFilesNamesIn(directory), read.csv)
}

readFilesNamesIn <- function(directory){
    list.files(directory, full.names=TRUE)
}