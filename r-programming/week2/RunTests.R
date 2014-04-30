library('testthat')
source('PollutantMean.R')

#test.suite <- defineTestSuite("example", dirs = file.path("tests"), testFileRegexp = '*Test.R')

#test.result <- runTestSuite(test.suite)

#printTextProtocol(test.result)

test_dir('test', reporter='Summary' filter='*Test.R')

