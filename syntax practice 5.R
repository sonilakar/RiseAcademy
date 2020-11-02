#Further subset the data in the data frame created in the last exercise as follows:
#  Select all rows of the data where Z is greater than 5.
#  Select all rows of the data where Z is greater than 3 and X is greater than the
#  median of X.
#  Select just the X and Z columns from the data where Z is greater than 5.



mydat[mydat$Z > 5, ]

med = median(mydat$X)
mydat[mydat$Z > 3 & mydat$X > med, ]

mydat[mydat$Z > 5, c("X", "Z")]

library(dplyr)

filter(mydat, Z > 5)
filter(mydat, Z > 3 & X > median(X))

mydat %>%
  select(X, Z) %>%
  filter(Z > 5)