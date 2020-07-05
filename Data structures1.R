#-------------------DATA STRUCTURES IN R-----------------------

#~~~~~~~~~~~~~~~SINGLE-MODE DATA STRUCTURES~~~~~~~~~~~~~~~~~~~~

# *****   Defining a Vector *****

numVector <- c(1, 2, 3, 4, 5)               #all numeric
numVector

charVector <- c("a", "b", "c", "d", "e")    #all characters
charVector

nameVector <- c(Female = 100, Male = 120)   #values have names
nameVector

#   Defining a Matrix

testMatrix <- matrix(1:12, nrow = 3, ncol =4)

#   Defining a Array

testVector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
testArray <- array(testVector, dim = c(3,4))
testArray

#Attributes

#mode

mode(numVector)

#length

length(charVector)

#names

names(nameVector)

#MULTI-MODE DATA STRUCTURES

#   Defining a List

emptyList <- list()

aVector <- c("a", "b", "c")
aMatrix <- matrix(1:6, nrow = 3, ncol =2)

unnamedList <- list(aVector, aMatrix)
unnamedList

#   Defining a Dataframe

Weather <- data.frame(
  Day = c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"),                  
  Temp = c(50, 55, 60, 47, 53, 57, 61)
)

Weather

#-------------------Finish-----------------------

#~~~~~~~~~~~~~~~~~~~~~~ With love, Sonila <3 ----

