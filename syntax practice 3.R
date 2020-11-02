# Create a "named" list containing a numeric vector with 10 values (called X) 
# and a character vector with 10 values (called Y) and a sequence of values 
# from 1 to 10 (called Z). 
#
# Use this list to:
#            Print the number of elements and the element names.
#            Select the X element.
#            Select the Y element.
#            Select values of the X element that are greater than the median 
#            of X.
#            Select values of the Y element where the corresponding X element 
#            is greater than the median of X.

xvec = c(9, 56, 34, 55, 21, 87, 48, 4, 63, 100)
yvec = c("Sansa", "Arya", "Cersei", "Tyrion", "Jaime", "Jon", "Dany", "Bran",
      "Hodor", "Joffrey")
zvec = 1:10

namedList <- list(X=xvec, Y=yvec, Z=zvec)

#
length(namedList)
#
names(namedList)
#
namedList$X
#
namedList$Y
#
namedList$X[namedList$X > median(namedList$X)]
#
namedList$Y[namedList$X > median(namedList$X)]