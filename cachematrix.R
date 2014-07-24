# Assignment for week 2
# making a function that can cache the inverse of a matrix

# test matrix
#c=rbind(c(1, -1/4), c(-1/4, 1))  

## This makes the matrix with all its functions
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## This function inverts the matrix if it does not have it cached,
##  or just returns the cache if it does have it
cacheSolve <- function(x) {
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
