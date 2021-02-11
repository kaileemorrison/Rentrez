# Download.R

install.packages("rentrez") # Install rentrez package in R.

ncbi_ids <- c("HQ433692.1","HQ433694.1","HQ433691.1") # Creates vector of IDs
library(rentrez)  # Loads package "Rentrez"
Bburg<-entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta") #



