## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a "special" matrix object which can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
        x <<- y
        inv <<- NULL
}
get <- function ()x 
setInverse <- function(solveMatrix) inv << solveMatrix
getInverse <- function() inv
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}

## Write a short comment describing this function
## This function computes the inverse of "special" matrix created above by makeCachematrix.If the
## inverse has already been calculated and the matrix not changed then the inverse can be retrieved from the cache 
## created by the above matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
message ("getting cached data")
return(inv)
}
 data <- x$(get)
 inv <- solve(data)
 x$setInverse(inv)
}
