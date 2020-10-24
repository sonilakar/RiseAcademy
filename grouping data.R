#Group by

property_data <- read.csv("propertydata.csv",
                            stringsAsFactors = FALSE)

###aggregate function

d <- aggregate(PRICE ~ PROPERTYCITY, property_data, mean)

d <- aggregate(PRICE ~ PROPERTYCITY + PROPERTYZIP, property_data, mean)


###GROUP BY - DPLYR - PIPE OPERATOR

library(dplyr)

d <- property_data %>%
  select(PROPERTYCITY, PRICE) %>%
  group_by(PROPERTYCITY) %>%
  summarize(mean(PRICE, na.rm = TRUE))

property_data %>%
  select(PROPERTYCITY, PROPERTYZIP, PRICE) %>%
  group_by(PROPERTYCITY, PROPERTYZIP) %>%
  summarize(mean(PRICE, na.rm = TRUE))

d <- property_data %>%
  select(PROPERTYCITY, PROPERTYZIP, PRICE) %>%
  group_by(PROPERTYCITY, PROPERTYZIP) %>%
  summarize(Mean_Price = mean(PRICE, na.rm = TRUE))
