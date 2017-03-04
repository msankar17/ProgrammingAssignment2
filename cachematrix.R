## This function would caculate the inverse of a sqaure matrix and
## would take the inverse value if already available from the cache

## This function would create a square matrix along with functions to access
makeCacheMatrix <- function(x = matrix()) {
  im=NULL
  get<- function() x
  getInverse<- function() im
  setInverse <- function(invmatrix) im <<- invmatrix  
  list(get=get,getinv=getInverse,setinv=setInverse)
}

##This function would calculate the inverse of square matrix
cacheSolve <- function(x, ...) {
  m=x$getinv()
  if(is.null(m))
  {
    message("Calculating Inverse of matrix")
    im=x$setinv(solve(x$get()))
    return(im)
  }
  message("Cached value printing")
  m
}
