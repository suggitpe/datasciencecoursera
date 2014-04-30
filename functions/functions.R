add2 <- function(x,y){
    x + y
}

above <- function(seq, lowBound = 10){
    use <- seq > lowBound
    seq[use]
}

columnMean <- function(dataFrame, removeNA = TRUE){
    numCols <- ncol(dataFrame)
    means <- numeric(numCols)
    for( column in 1:numCols){
        means[column] <- mean(dataFrame[, column], na.rm=removeNA)
    }
    means
}