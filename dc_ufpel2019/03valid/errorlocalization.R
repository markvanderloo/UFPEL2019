# Statistical Data Cleaning
# Mark van der Loo and Edwin de Jonge
# UFPEL2019
## error localization 

library(errorlocate)

# 1 Toy problem
# suppose we have the following rule set
rules <- validator(
  if (married == TRUE) age >= 16,
  if (attends == "kindergarten") age <= 6
)

# and our data to be checked is this:
my_data <- data.frame( age = 3
                     , married = TRUE
                     , attends = "kindergarten"
                     )

# Discuss with your neighbor how we can alter the values so 
# they comply to the rules. 

# 1b) Which is your prefered one? Why?


# 1c) # use locate_errors with the rules and my_data to find the error.
el <- locate_errors(my_data, rules)
el$errors



#2 load the rules for our data set:
rules <- validator(.file = "./03valid/rules.R")

rules

# load the data
data_with_errors <- read.csv("02input/input.csv")

# use locate_errors to find erronuous variables
# and store the result in variable "errors"
el <- locate_errors(data_with_errors, rules)


# make a summary of the errors.
summary(el)

# Which fields are found to contain errors?




