test.calculatesMeanForSulfatePollutantsAcrossAllData <- function(){
    checkEquals(12.3, pollutantmean('specdata', 'sulfate'))
}

test.calculatesMeanForNitratePollutantsAcrossAllData <- function(){
    checkEquals(23.5, pollutantmean('specdata', 'nitrate'))
}

test.calculatesMeanForSulfateForSubsetOfData <- function(){
    checkEquals(3243.3, pollutantmean('specdata', 'sulfate', 1:10))
}
