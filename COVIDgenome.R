# COVIDgenome.R

# Using what you have learned, make a new script called COVIDgenome.R that will download 
# the SARS-CoV-2 reference genome from Genbank. Use the accession NC_045512.2 

SARSCoV2<-scan("./sarscov2.gb",what="character",sep="\n") 
print(SARSCoV2)

install.packages("rentrez") # Install rentrez package in R.
library(rentrez)  # Loads package "Rentrez"


