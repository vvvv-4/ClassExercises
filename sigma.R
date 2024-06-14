#' We'll write a script to find the sum of natural numbers 
#' up to a user input number (n)

# read user input
# check if it is a number and it is < 1000
# if F
#  gracefully exit left
# if T
#    calculate sigma
#    output sigma


answer <- readline(prompt = "Please enter an integer smaller than 1000:  ")
answer <- as.numeric(answer)
# check if the number is valid
if (is.na(answer)) {
  print("Entry is not a number.")
} else {
  print(paste("you managed to enter a number! it is",answer))
}
