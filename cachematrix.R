library(matlib) ## Loads the matlib package

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Will get a matrix object and then creates its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverseMatrix <- function(inverseMatrix) inv <<- inverseMatrix
        getinverseMatrix <- function() inv
        list(set = set, get = get,
             setinverseMatrix = setinverseMatrix,
             getinverseMatrix = getinverseMatrix)
}

## Write a short comment describing this function
## Will check if the object is already in cache


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverseMatrix()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverseMatrix(inv)
        inv
}
