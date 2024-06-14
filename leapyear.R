#' A leap year is exactly divisible by 4 
#' except for century years (years ending with 00). 
#' The century year is a leap year 
#' only if it is perfectly divisible by 400.

year <- readline(prompt = "Enter a year please:  ")

year <- as.numeric(year)

# option 1 century?
# if (year %% 100 == 0) {} 

# option 2 century and ly?
if(year %% 400 == 0){
# if century AND divisible by 400 -> leapyear
# no need to divide by 100 because it is implicit
  print("yes")
} else if (year %% 100 != 0 & year %% 4 == 0) {
# Not a century AND divisible by 4 -> leapyear
  print("yes")
} else {
 print("no")
}




