## This example illustrates how to use << function to set a value of an object 
## in a different environment than the current one. Caching values is useful for 
## repeated tasks.

## Creating a special "matrix" and resulting in a list containing a function to: 
# 1.set the value of the matrix
# 2.get the value of the matrix
# 3.set the value of the inverse
# 4.get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() m
  list(set=set, get=get, 
       setinverse=setinverse, 
       getinverse=getinverse)
}

## If the inverse has already been calculated, get it from the cache;
# otherwise calculate the inverse and set it in the cache via the setinverse function.
 
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}
