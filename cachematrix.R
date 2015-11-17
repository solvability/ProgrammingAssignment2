## Put comments here that give an overall description of what your
## functions do
## cache the inverse of a matrix
## Write a short comment describing this function
## Create a vector which contains the matrix. Will have the ability to cache inverse once computed
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y){
        x <<- y
        inverse <<- NULL
    }
    get <- function() y
    setinverse <- function(){
        inverse <<- solve(x)
    }
    getinverse <- function(){
        inverse
    }
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
## If inverse is computed before, fetch it. Otherwise, compute and cache it, then fetch it 
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
    if( !is.null(inverse) ) {
        message("getting cached data")
        return( inverse )
    }
    x$setinverse()
    x$getinverse()
}
