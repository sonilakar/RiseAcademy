library(XLConnect)

prop <- readWorksheetFromFile("propertydata_small.xlsx", sheet = 2)

nrow(prop)
ncol(prop)

colnames(prop) <- c("A", "B")

#READ EVEN ROWS - check

duplicated(prop$B) -- #return the value that is duplicated,
  #how to get more than one duplicated

prop[duplicated(prop$B), ]
  
unique(prop$B)

runif(10, min = 0, max = 100) 

library(stringr)

str <- "corporatefloor"

str_to_lower(str)
str_to_upper(str)
str_to_title(str)
str_count(str, "o")

#break the string into 2 at a particular location

ERI-V85-ONSEMI-SOI-HONUSD-HK

str_split("ERI-V85-ONSEMI-SOI-HONUSD-HK", "-")

str_replace_all("ERI-V85-ONSEMI-SOI-HONUSD-HK", "-", "$")

str_replace_all("ERI-V85-ONSEMI-SOI-HONUSD-HK", "-", " ")

str_replace_all("ERI-V85-ONSEMI-SOI-HONUSD-HK", "-", "")

str_detect("ERI-V85-ONSEMI-SOI-HONUSD-HK", "-")

str_replace("ERI-V85-ONSEMI-SOI-HONUSD-HK", "-", "$")

####################

myMatrix <- matrix(1:10, nrow = 2, ncol = 5)

myDF <- data.frame(Person = c("Sonila", "Soumya"),
                   City = c("Tempe", "NYC"))

#myDF2 <- data.frame(Person = c("Miki"),
#                    City = c("Bangalore"))

myDF3 <- rbind(myDF, c("Miki", "Bangalore"), c("Prativa", "HK"))

####################

myDF3[order(myDF3$Person),]


myDF3$Salary <- NA

myDF3$Salary <- c("100", "200", "300", "400")

library(dplyr)

filter(myDF3, Salary >= 200)

##############################

library(reshape)

reshape_data <- data.frame(Person = c("Mike", "Mike", "Bob", "Bob"),
                           Country = c("France", "UK", "France", "UK"),
                           Spent = c(1213, 1872, 1726, 2234))

wide_data <- cast(reshape_data, Person ~ Country, value = "Spent")

long_data <- melt(wide_data, id.vars = c("Person", "Country"))

#can we go from wide to long in 1 step

#aggregate

aggregate(Spent ~ Person, reshape_data, sum)

#group_by

d <- reshape_data %>%
  select(Person, Spent) %>%
  group_by(Person) %>%
  summarize(Mean_Spent = mean(Spent))

##########################

matrix1 <- matrix(1:4, nrow = 2, ncol = 2)
matrix2 <- matrix(5:8, nrow = 2, ncol = 2)

myList <- list(matrix1, matrix2)

myfunc <- function(x){
  
  y = x+10
  
}

print(myfunc(2))

lapply(myList, myfunc)

mtcars <- mtcars

apply(mtcars, MARGIN = 2, mean)


evenrow <- function(x) {
  
  for (i in 1:nrow(x)){
  
    row_cnt = (i %% 2)
  
    if(row_cnt == 0){
    
    print(x[i,])
    
    }

  }
  
}

lapply(prop, evenrow)





















