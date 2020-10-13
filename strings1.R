install.packages("stringr")

library(stringr)

phrase <- "I love to work with strings"
cities <- c("Chicago", "San Francisco", "Miami")
Rise <- "   Rise Academy   "
string1 <- "What is"
string2 <- "your name ?"


#length

str_length(phrase)

#count 

str_count(cities)

#pattern

str_detect(phrase, "ot")
str_detect(phrase, "ov")

#trim

str_trim(Rise)

#concatenate

str_c(string1, string2, sep = " ")
str_c(string1, string2, sep = ".")
str_c(string1, string2, sep = "")


#order

str_order(cities)

#sort

str_sort(cities)

#replace


str_replace(phrase, "o", "i")
str_replace_all(phrase, "o", "i")

#split

str_split(phrase, "to")





