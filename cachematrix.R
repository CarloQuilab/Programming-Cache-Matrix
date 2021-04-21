## First, Set the input of X Into Matrix
## Second,, Set the solved value  of "s" as a null value
## Until every reference to "mean" to "solve" is replaced


makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
s <- NULL
  set <- function(y){
    x <<- y
    s <<- NULL
}
 get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve) 

## The Same pattern is implemented here, replaced the "mean" into "solve" and "m" to "s" to finalize

 j <- x$getInverse()
  if(!is.null(s)){
  message("getting cached data")
  return(s)
  }
  mat <- x$get()
  s <- solve(mat,...)
  x$setInverse(s)
  s
}
