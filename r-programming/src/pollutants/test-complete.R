library('testthat')
source('complete.R')

test_that("Complete counts the number of complete items for a single observation",{
    completeCount <- complete('specdata', 1)
        
    expect_that(length(completeCount), equals(2))
    expect_that(completeCount[,2], equals(117))
})

test_that("Complete counts the number of complete items for specific observations", {
    completeCount <- complete('specdata', c(2,4,8,10, 12))
    
    expect_that(nrow(completeCount), equals(5))
    expect_that(paste(completeCount$nobs, collapse='-'), equals("1041-474-192-148-96"))
})

test_that("Complete creates reversed list of observations", {
    completeCount <- complete("specdata", 30:25)    
    
    expect_that(nrow(completeCount), equals(6))
    expect_that(paste(completeCount$nobs, collapse='-'), equals("932-711-475-338-586-463"))
})
