# function examples

my_1st_fun <- function() {
  print("Hello world!")
}

#call my function
my_1st_fun()

my_2nd_fun <- function(x) {
  print(paste("The square of", x, "is", x**2))
}

my_3rd_fun <- function(x=1) {
  x_sqr <- x**2
  return(x_sqr)
}
