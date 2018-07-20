## This set of functions take a square matrix and calculate the inverse of it.
## The inverse is cached so that the time intensive function does not have to be
## run on the same matrix multiple time.

## The first function takes a square matrix and returns an object (list) of functions
## that will cache the inverse of the matrix when another function is called on the object
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }

## This function solves for the inverse of the matrix inputted into the prior function.
## By running this function on the object generated from the prior function, the inverse
## matrix (returned value) can be cached when this function is run multiple times.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
