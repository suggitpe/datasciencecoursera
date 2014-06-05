library('testthat')
source("rankhospital.R")

test_that("rankhospital can get best hospital for a state", {
    expect_that(rankhospital("MD", "heart attack", "best"), equals("HARFORD MEMORIAL HOSPITAL"))    
})

test_that("rankhospital can get the worst hospital for a state", {
    expect_that(rankhospital("MD", "heart attack", "worst"), equals("HARFORD MEMORIAL HOSPITAL"))  
})

test_that("rankhospital can get the 4th best hospital for a state", {
    expect_that(rankhospital("TX", "heart failure", 4), equals("DETAR HOSPITAL NAVARRO"))
})

test_that("rankhospital returns NA when asked for a rank greater than the total in a state", {
  expect_that(rankhospital("MN", "heart attack", 5000), equals(NA))  
})
