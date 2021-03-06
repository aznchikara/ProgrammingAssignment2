## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  } #Setting a new matrix y in place of x
  get <- function() x
  setInverse <- function(inverse) I <<- inverse
  getInverse <- function() I
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

 
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  I <- x$getInverse()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setInverse(I)
  I
}
