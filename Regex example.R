#Regex Example

library(stringr)

sentence <- "This is the first line. \nThis is the second."
phrase <- c("hello", "darkness", "my old", "friend.")
str_view(sentence, "i")
#Find all the i in the string "sentence"

str_view(sentence, "[aeiou]")
#Consider aeiou as a word if no square brackets

str_view(phrase, "[d]$")
str_view(phrase, ".")
#Sentence is a vector of one item, while phrase has multiple items. 
#Period means every characters, to find the literal period, we have to escape it
str_view(phrase, "\\.")
