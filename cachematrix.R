## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function makes a cache matrix containing functions
## listed which: sets the matrix, gets the matrix
## , sets the inverse of the matrix, and gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix())
{ m <- NULL
set <- function(y)
{ x <<- y
m <<- NULL
}
get <- function() x
setinv <- function(inverse) m <<- inverse
getinv <- function() m
list(set = set, get = get,
     setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## this function checks if the inverse has been computed, and returns it
## otherwise, it computes for it and caches it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) 
  { message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
  
  }
