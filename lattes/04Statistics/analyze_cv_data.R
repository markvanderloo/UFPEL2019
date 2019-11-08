suppressPackageStartupMessages(library(dplyr))

cv_data <- read.csv("03Valid/cv_data.csv"
                    ,stringsAsFactors = FALSE)

# compute some summary statistics
out <- summarize(cv_data
          , pesquisadores = n() 
          , mean_artigos  = mean(artigos)
          , sd_artigos    = sd(artigos))

# write to csv
write.csv(out, "04Statistics/summary.csv", row.names=FALSE)

# create a plot and write to png file for report.
png("04Statistics/articles_by_researcher.png")
barplot(cv_data$artigos, las=2
        , xlab="Researcher"
        , ylab="Articles"
        , main="Articles by researcher")
dev.off()





