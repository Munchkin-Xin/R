## cache and return the inverse of a matrix

## caching inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function()x
	setinverse <- function(inverse) m<<- inverse
	getinverse <- function() m
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
	m <- x$getsolve()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data,...)
	x$setinverse(m)
	m
}
