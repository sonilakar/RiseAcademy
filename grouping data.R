#HOW TO TO GROUP BY IN R

property_data <- read.csv("propertydata.csv",
                            stringsAsFactors = FALSE)

#AGGREGATE

d <- aggregate(PRICE ~ PROPERTYCITY, property_data, mean)

aggregate(PRICE ~ PROPERTYCITY + PROPERTYZIP, property_data, mean)

library(dplyr)

#group_by and pipe operator

d <- property_data %>%
  select(PROPERTYCITY, PRICE) %>%
  group_by(PROPERTYCITY) %>%
  summarize(mean(PRICE, na.rm = TRUE))


property_data %>%
  select(PROPERTYCITY, PRICE, PROPERTYZIP) %>%
  group_by(PROPERTYCITY, PROPERTYZIP) %>%
  summarize(mean(PRICE, na.rm = TRUE))


d <- property_data %>%
  select(PROPERTYCITY, PRICE, PROPERTYZIP) %>%
  group_by(PROPERTYCITY, PROPERTYZIP) %>%
  summarize(Mean_Price = mean(PRICE, na.rm = TRUE))