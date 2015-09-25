## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat<-NULL
  set<-function(y){
    mat<<-NULL
    x<<-y
  }
  get<-function() x
  setinv<-function(lim) mat<<-solve(lim)
  getinv<-function() mat
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat<-x$getinv()
  #jim<-solve(x$get)
  if(!is.null(mat)){
    #if(identical(solve(jim),mat,num.eq=TRUE))
    {
      message("getting cached data")
      return(mat)
    }
  }
  data<-x$get()
  mat<-x$setinv(data)
  mat
}
