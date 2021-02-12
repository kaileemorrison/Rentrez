# COVIDgenome.R

sarscov2 <- scan("./sequence.gb", what="character", sep="\n") # Downloads SARS-CoV2 sequence genome from Genbank
print(sarscov2) # Prints SARS-Cov2 sequence to confirm it is correct


CovSeq <-gsub(".*1 *([gatc])","\\1", sarscov2) # Removes number at the start of the sequence
CovSeq<-gsub(".*ORIGIN +","", paste(CovSeq, collapse="")) # Gets rid of anything in front of the start of the sequence and collapses into a single string 
CovSeq<-gsub(" |//","", CovSeq) # Removes all spaces and newline characters 
CovSeq<-gsub("([actg])","\\U\\1", CovSeq, perl=TRUE) # Translates sequence into uppercase


Sprotein <-substr(CovSeq, start = 21563, stop = 25384) # Isolates the protein (bp 21563 to 25384) from the sequence 
Sprotein # Prints out isolated protein sequence

# This gene is highly conserved. The descriptions tab revealed a list of variants, 
# however the majority of them matched the sequence of interest with a percent identity of 100%, 
# with the furthest variant only varying by 0.08% (per. ident of 99.92%). 


