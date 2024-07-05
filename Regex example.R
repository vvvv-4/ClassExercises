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
str_view(sentence, "\\W")
#\\W for viewing non-word characters

#Finding phone number in data 
#[(]?\\d{3}[)]?[|-]?\\d{3}[|-]\\d{4}

#identify the valid emails

emails <- ##Pull from her file

#has the @ sign, excludes item with no @ sign
str_view(emails,"@")

#Has account before @,anycharacter(+)is used for one or more times
str_view(emails, ".+@")

#Has account before @, alphanumeric (+) is used for one or more times
str_view(emails, "[A-Za-z0-9]+@")

#check before n after @ sign for alphanumeric characters
str_view(emails, "[A-Za-z0-9]+@[A-Za-z0-9]+")

#must contain a domain name and a period after that
str_view(emails, "[A-Za-z0-9]+@[A-Za-z0-9]+\\.")

#must contain a domain name, a period and a domain extension
str_view(emails, "[A-Za-z0-9]+@[A-Za-z0-9]+\\.[a-z]{2,4}")
#Has nothing trailing behind the above
str_view(emails, "[A-Za-z0-9]+@[A-Za-z0-9]+\\.[a-z]{2,4}\\z")


