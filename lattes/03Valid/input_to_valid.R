library(simputation)

cv_data <- read.csv("02Input/cv_data.csv"
                    ,stringsAsFactors = FALSE)

# Impute missing values (Warning: BAD methodology ahead) 
out <- impute_knn(cv_data, . ~ artigos + capitulos, k=1)

# Export to file
write.csv(out, "03Valid/cv_data.csv", row.names=FALSE)



