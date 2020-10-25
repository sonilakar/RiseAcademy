mtcars <- mtcars
print(mtcars)

sample_matrix1 <- matrix(1:4, nrow = 2, ncol = 2)
print(sample_matrix1)

sample_matrix2 <- matrix(5:8, nrow = 2, ncol = 2)
print(sample_matrix2)

sample_list <- list(sample_matrix1, sample_matrix2)
print(sample_list)

#multiple by 10

mult10 <- function(x) {
  y = x/10
}

mult10(100)

#--------------------------------------------------------
print(mtcars)
apply(mtcars, MARGIN = 1, FUN = mean)

#--------------------------------------------------------

print(sample_list)
lapply(sample_list, mult10)

#--------------------------------------------------------

print(mtcars)
apply(mtcars, MARGIN = c(1,2), FUN = mult10)
lapply(mtcars, mult10)
data.frame(lapply(mtcars, mult10))

