# Download.R

install.packages("rentrez") # Install rentrez package in R.

ncbi_ids <- c("HQ433692.1","HQ433694.1","HQ433691.1") # Creates vector of IDs
library(rentrez)  # Loads package "Rentrez"
Bburg <- entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta") # Passes character name of the database to NCBI database and retrieves a character vector containing these records. 


Sequences <- strsplit(Bburg, split="\n\n") # Splits the Bburg object into three distinct sequences 
print(Sequences) # Prints the output of the Sequences object


Sequences <- unlist(Sequences) # Converts Sequences object from list to data frame


header <- gsub("(^>.*sequence)\\n[ATCG].*","\\1",Sequences) # Creates an object that produces a title called "Sequence"
seq <- gsub("^>.*sequence\\n([ATCG].*)","\\1",Sequences) # Creates an object that removes headers at the start of each sequence
Sequences <- data.frame(Name=header,Sequence=seq) #Separates sequences from headers
print(Sequences) # Prints out updated object to confirm headers have been successfully removed. 

gsub("","",Sequences)


write.csv(Sequences, "./Sequences.csv") # Outputs the data frame object to a file called "Sequences.csv"


