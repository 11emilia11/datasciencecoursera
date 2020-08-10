# conditional loops
# the traditional form
x <- 10


if(x > 3) {
    y <- 10
} else {
    y <- 0
}

print(y)

# the R-way
z <- -1
x <- 1
z <- if(x > 3){
  15
} else {
  0
}

print(z)

# functions

add <- function(x,y){
  x + y
}

above10 <- function(x){
    
    use <- x > 10
    x[use]

}

above <- function(x, n){
  use <- x > n
  x[use]
}

columnmean <- function(y, removeNA= TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  
  for(i in 1:nc){
          means[i] <- mean(y[,i], na.rm = removeNA)
  }
  
  means
}



