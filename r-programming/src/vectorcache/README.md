# Caching the Mean of a Vector

In this example we introduce the <<- operator which can be used to assign a value to an object in an environment that is different from the current environment. Below are two functions that are used to create a special object that stores a numeric vector and cache's its mean.

The `makeVector` function, makeVector creates a special "vector", which is really a list containing a function to:

* set the value of the vector
* get the value of the vector
* set the value of the mean
* get the value of the mean

The `cachemean` function calculates the mean of the special "vector" created with the above function. However, it first checks to see if the mean has already been calculated. If so, it gets the mean from the cache and skips the computation. Otherwise, it calculates the mean of the data and sets the value of the mean in the cache via the setmean function.
