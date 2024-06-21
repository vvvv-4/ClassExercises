#Write a bunch of useful functions
#For pieces of code I never want to write again

###################
#Function to accept user imput 
#a single character'
# '@name User_imput_char
# '@param none
# '@output a single characters

#Repeat Block Begins as least one, while doesn't even start

user_imput_num <- function() {
  repeat {
    answer <- readline(prompt = "Enter a single number:")
    if (!is.na(as.numeric(answer)) & nchar(answer) > 0){
      break
   }
  }
  return(as.numeric(answer))
}
 
#repeat
#break would jump out of repeat
