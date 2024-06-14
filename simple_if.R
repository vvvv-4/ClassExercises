#' if(condition){Expression}
#' 
#' if(condition){
#' Block_statement
#' } else {
# 
#'Block_statement
#'}

x <- 0

# Single expression, no big downstream effects
if(x == 0){ print("the number is 0") }

# Select between two options
if (x < 0) {
  print(paste(x,"is negative."))
} else {
  srx <- sqrt(x)
  print(srx)
}  # if else x<0



