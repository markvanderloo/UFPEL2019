# Statistical Data Cleaning
# Mark van der Loo and Edwin de Jonge
# UFPEL2019

# We start with json file that was collected/scraped from a websource
library(jsonlite)

# We use the jsonlite to read in the data
companies_raw <- read_json("01raw/companies.json")

# look at the structure 
str(companies_raw)
View(companies_raw)

# Ok, jsonlite has read it as a list, we have to supply simplifyVector = TRUE so
# it will turn it into a data.frame (if possible)
companies_raw <- read_json("01raw/companies.json", simplifyVector = TRUE)

str(companies_raw)
View(companies_raw)

# We have read the data into a data.frame, but is the data "technically" 
# correct?

# 1 Look at the type and contents of the columns, discuss with your neighbor
# which technical problems with the data you see. e.g. what data type do you
# expect each column to be?
#
# Tips
# - Use str(companies_raw) to find out about data types.
#   chr = character, num = numeric, int = integer, Factor = categorical variable. 
# - Use View(companies_raw) to brows through the data. Any values with
#   technical problems?


# 2 fix the "staff" column, which should be turned into a integer, check if we 
# correctly introduced NA's.
staff <- as.integer(companies_raw$staff)

# Let us compare the converted data in 'staff' with the original data in companies_raw$staff
# by creating a temporary data frame
d <- cbind(original = companies_raw$staff, converted=staff)

# use View(d) to compare converted values with original values. Is everything
# converted? What do you think the 'NA' values mean?

# We now replace the original 'staff' column with the converted data
companies_raw$staff <- staff

# 3 Turn profit into a numeric. Take a look at the 'parse_number' function from
# the readr package.
library(readr)
?parse_number

# 4 Turn all financial variables into 'numeric'.
# Note, we use a typical 'R trick' here: the function 'lapply' allows us to apply
# a function (here: 'parse_number') to every column of a data frame (here: columns 3 to 9
# of companies_raw)
companies_raw[3:9] <- lapply(companies_raw[3:9], parse_number)

# Use View(companies_raw) to see the result.

# 5 save the resulting data.frame:
write.csv(companies_raw, "02input/my_companies.csv", row.names = FALSE, na ="")

# Assignment 6 SEE SLIDE


