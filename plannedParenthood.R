
#Load data downloaded data from data.gov.ph
rpfp <- read.csv("~/R Programs/Responsible parenthood data/rpfp2017a.csv", header = TRUE, sep = ",")

#Loading packages
library(dplyr)
library(tidyr)

#rename col to more meaningful names 
rpfp2 <- rename(rpfp, Region = region, 
                      Couple.Status = status_demandgen, 
                      number = couples_reached)

#using spread to make a better table :)
rpfp3 <- spread(rpfp2, Couple.Status, number)

#Add a total col
rpfp3$Total.Unmet <- rpfp3[,3] + rpfp3[,4]