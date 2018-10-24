## Put comments here that give an overall description of what your
## functions do

## there I use a function to store and get the value of matrix and inverse matrix


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setso <- function() m <<- solve(x)
  getso <- function() m
  list(set = set, get = get,
       setso = setso,
       getso = getso)

}


## In this function, I can calculate the inverse matrix . But if there is already a value, it get this cached value 

cacheSolve <- function(x, ...) {
  m <- x$getso()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setso(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
