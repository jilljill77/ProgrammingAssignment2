makeCacheMatrix <- function(x = matrix()) {
  m <- NULL ## assigns the value of m to NULL (m gets empty set)
  y <- NULL ## assigns the value of y to NULL (y gets empty set)
  setmatrix <- function(y) { ## assigns the value of the matrix
    x <<- y ## caches the input matrix to check whether it has changed 
    m <<- NULL ## assigns the value of m  to NULL
  }
  list(setmatrix = setmatrix, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
  ##identifies 4 functions in a vector
}
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix() ## obtains inverse if it has already been calculated
  if(!is.null(m)){ ## if m is not empty (i.e. has already been calculated) return m)
    message("getting cached data")
    return(m)
  }
  matrix<-x$get
  m<-solve(matrix, ...) ## otherwise calculates the inverse
  x$setmatrix(m)  ##cache setmatrix
  m
}
