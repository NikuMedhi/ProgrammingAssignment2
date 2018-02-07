## Put comments here that give an overall description of what your
## functions do set a vector, get the value of the vector, set the mean and tghen get the mean

## makeVector creates a special vector

makeCacheMatrix <- function(x = matrix()) {

inv <- NULL
 set <- function(y) {
  x <<- y
  inv <<- NULL
   }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached result")
    return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
