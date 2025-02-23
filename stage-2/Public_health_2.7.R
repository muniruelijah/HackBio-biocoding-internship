getwd()
setwd("C:/Users/Bossmantech/Documents/BIOINFORMATICS/CODING_FOR_BIO/HackBio-biocoding-internship/stage-2")
# Import the datasets

public_health_data <- read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/nhanes.csv",
                                 header = TRUE)
# 
head(public_health_data)