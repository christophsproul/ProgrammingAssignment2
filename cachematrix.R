## The first function caches its inverse within the function
## The second function checks if the inverse is

makeCacheMatrix <- function(m = matrix()) {
        i <- NULL
        set <- function(matrix){
                m <<- matrix
                i <<- NULL
        }
        get <- function() m
        setinverse <- function(inverse)
                i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## computes inverse, returns if already cached.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
                message("Retreiving cache data...")
                return(m)
        }
        data <- x$get()
        m <- solve(data) 
        x$setmean(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
