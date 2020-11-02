#Adapt your code to instead create a data frame containing two columns 
#(X = a numeric vector with 10 elements, 
# Y = a character column containing 10 elements, 
# Z = integers 1 to 10). 

# Use this structure:
#   Print the number of columns and the column names.
#   Select the X column.
#   Select the Y column.
#   Select values of the X column that are greater than the median of X.
#   Select values of the Y column where the corresponding X value is greater 
#   than the median of X.

xvec = c(9, 56, 34, 55, 21, 87, 48, 4, 63, 100)
yvec = c("Sansa", "Arya", "Cersei", "Tyrion", "Jaime", "Jon", "Dany", "Bran",
         "Hodor", "Joffrey")
zvec = 1:10

mydat <- data.frame(X=xvec, Y=yvec, Z=zvec)

#
length(mydat)
ncol(mydat)
#
names(mydat)
#
mydat$X
#
mydat$Y
#
mydat$X[mydat$X > median(mydat$X)]
#
mydat$Y[mydat$X > median(mydat$X)]