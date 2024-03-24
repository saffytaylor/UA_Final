# R script to convert the BSA 2020 .sav file into .csv so we can use it in python

rm(list = ls()) # emptying the environment

install.packages('haven') # package that allows us to read .sav files
install.packages('readr') # package that allows us to save the data as a .csv

library(haven) 
library(readr) 

setwd('/Users/saffytaylor/UA_Final/data/BSA2020')
getwd()


BSA_2020 <- read_sav("bsa2020_archive.sav")
write_csv(x=BSA_2020, path="bsa2020.csv")

# https://haven.tidyverse.org/reference/read_spss.html
# https://readr.tidyverse.org/reference/write_delim.html

# https://forum.posit.co/t/how-do-i-convert-a-sav-file-to-a-csv-file-in-r/73366