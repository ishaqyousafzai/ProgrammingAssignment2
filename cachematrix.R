## The first function will create a special matrix 
## The second Matrix will calculate the inverse of the Matrix
## and also check if it is already calculated then it will get
## the cached inverse Matrix


## This function will creat a Matrix

makeCacheMatrix <- function(x = matrix()) {
  
  inverseMatrix <- NULL 
  
  ## setting the Matrix values 
  set <- function(y) { 
    x <<- y 
    inverseMatrix <<- NULL 
  }
  ## getting the values 
  get <- function() x
  
  ## setting the  inverse  of the Matrix
  setInverse<- function(inverse) inverseMatrix <<- inverse
  
  ## gettin the  inverse of the Matrix
  getInverse <- function() inverseMatrix
  
  list(set = set, get = get,setinverse =setInverse, getinverse =getInverse)
  

}


## this function calculates the inverse of the matrix
## first checks the if the inverse is already calulated 
## if yes then gets the previous calculated values 
## otherwise calculates the inverse and stores it for next time 


cacheSolve <- function(x, ...) {
        
  inverseMatrix <- x$getinverse()

  ## checks if the inverse matrix is already calculated 
 
  if(!is.null(inverseMatrix)){
    message("getting cached data...")
  }
  
  ## inverse matrix calculation
 
  data <- x$get()
  inverseMatrix <- solve(data)
  x$setinverse(inverseMatrix)
  inverseMatrix
}
