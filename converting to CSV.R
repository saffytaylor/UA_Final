# R script to convert the BSA 2020 .sav file into .csv so we can use it in python

rm(list = ls()) # emptying the environment

install.packages('haven') # package that allows us to read .sav files (Haven, 2024)
install.packages('readr') # package that allows us to save the data as a .csv (Readr, 2024)

library(haven) 
library(readr) 

setwd('/Users/saffytaylor/UA_Final/data/BSA2020')
getwd()


BSA_2020 <- read_sav("bsa2020_archive.sav")
write_csv(x=BSA_2020, path="bsa2020.csv")
