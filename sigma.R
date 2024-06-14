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
# explain the condition
  print("Entry is not a number.")
} else if (answer > 1000) {
# explain the condition
  print(paste(answer, "is too large! Try a number smaller than 1000"))
} else {
# explain the condition
  print(paste("The sum of the number from 1 to",
              answer,"is", sum(1:answer)))
}
