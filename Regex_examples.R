# Regex examples

library(stringr)

sentence <- "This is the first line.\nThis is the second"

str_view(sentence, "e")
str_view(sentence, "[aeiou]")
str_view(sentence, "[e-l]")
