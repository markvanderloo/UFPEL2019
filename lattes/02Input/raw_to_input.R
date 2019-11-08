source("02Input/functions.R")
library(lubridate)

# get the names of all files in 01Raw
files <- dir("01Raw/", full.names = TRUE)

# extract the data from each file: one row for each file
L <- lapply(files, extract_cv_data)

# put all the data in a single data.frame
cv_data <- do.call(rbind, L)

cv_data$data_atualizacao <- dmy(cv_data$data_atualizacao)



# write the data to a csv file
write.csv(cv_data, file="02Input/cv_data.csv", row.names=FALSE)
