###
# Lists are containers for other objects. Lists are like a box. You can put data frames, vectors, matrix
# inside a list and access them as required.
#
# Most complex and hard to visualize
##

#data frame

element1 <- data.frame(name = character(),
                       age = numeric(),
                       salary = numeric(),
                       location = character(),
                       stringsAsFactors = FALSE)

element1 <- rbind(element1, data.frame(name = c("Sheldon", "Chandler", "Jonas", "Masaba"),
                                       age = c(30, 26, 18, 32),
                                       salary = c(90000, 100000, 20000, 200000),
                                       location = c("Los Angeles", "New York", "Winden", "Mumbai")))

#vector

element2 <- c("Big Bang Theory", "Friends", "Dark", "Masaba Masaba")


#matrix

element3 <- matrix(1:10, nrow = 5, ncol = 2)

#list

somelist <- list(element1, element2, element3)











