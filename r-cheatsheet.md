# R cheat sheet

## Why
This summarises the key things you need to remember for R.

## Package Management
Packages are used to extend R as with any other library mechanism
* `a <- available.packages()` to get the list of all the packages in CRAN
* `install.packages("slidify")` to install a package (in this case slidify)
* `install.packages(c("slidify", "devtools"))` to install a number of packages
* bioconductor is another source but you need to `source("http://...")` then `biocLite()` then `biocLite(c("pkg", "pkg"))`
* `library(slidify)` to load a package (need to load before using)
* `search()` to list all of the functions now available to you


