#Regex Example

library(stringr)

sentence <- "This is the first line. \nThis is the second."

str_view(sentence, "i")
#Find all the i in the string "sentence"

str_view(sentence, "[aeiou]")
#Consider aeiou as a word if no square brackets
