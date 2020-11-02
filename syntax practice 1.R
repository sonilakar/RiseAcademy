#utils
read.table("file.csv",
           header = TRUE,
           sep = ",",
           stringsAsFactors = FALSE)

read.csv("file.csv")

read.table("file.txt",
           header = TRUE,
           sep = "\t",
           stringsAsFactors = FALSE)

read.delim("file.txt")

#readr

read_delim("file.csv",
           delim = ",",
           col_names = c("states", "city", "pop", "area"),
           skip = 2,
           n_max = 3)

#read_xl

read_excel("file.xlsx")

#XLConnect

readWorksheetFromFile("file.xlsx", sheet = 1)

read.spss("file.sav", to.data.frame = TRUE, use.value.labels = FALSE)

#reshape

reshape_data <- data.frame(Person = c("Mike", "Mike", "Bob", "Bob"),
                           Country = c("France", "UK", "France", "UK"),
                           Spent = c(1213, 1872, 1726, 2234))

data_wide <- cast(reshape_data, Person ~ Country, Value = "Spent")

melt(data_wide, id.vars = c("Person", "Country"))

data_long <- melt(data_wide, id.vars = c("Person", "Country"))







