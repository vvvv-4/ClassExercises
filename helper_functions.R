# a bunch of useful functions
# for the pieces of code I never
# want to write ever again

#######
#' Function to accept user input
#' "a single character"
#' @name user_input_char
#' @param none 
#' @output a single character

user_input_char <- function() {
  repeat {
    answer <- readline(prompt = "Enter a single char : ")
    if (nchar(answer) == 1){
      break
    } # if
  } # repeat
  return(answer)
}

#######
#' Function to accept user input
#' "a number"
#' @name user_input_num
#' @param none 
#' @output a number

user_input_num <- function() {
  repeat {
    answer <- readline(prompt = "Enter a number : ")
    if (!is.na(as.numeric(answer)) & nchar(answer) > 0){
      break
    } # if
  } # repeat
  return(as.numeric(answer))
}

