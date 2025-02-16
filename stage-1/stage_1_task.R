#write a function for translating DNA to protein. 
DNA_to_Protein <- function(DNA_seq){
  #Convert the DNA sequence into codons 
  # Split the DNA sequence into nucleotide 
  nucleotides <-  strsplit(DNA_seq, split = "")[[1]]
  
  # Group the nucleotides into threes to create a codon
  grouped_nucleotides <- split(nucleotides, rep(x = seq(length(nucleotides)/3), each =3))
  codons <- sapply(grouped_nucleotides, paste, collapse = "")
  
  # Translate the codons into an amino acid using the codon table
  codon_table <- read.csv("codon-table-grouped.csv")
  Aminoacid_seq <- data.frame(
    aminoacid = character()
  )
  
  # Iterate over each item(codon) in codons and check for the corresponding Amino acid in the codon table
  for (cod in codons){
    aa <- subset(codon_table, subset = codon == cod, select = aminoacid)
    Aminoacid_seq[nrow(Aminoacid_seq) + 1,] <- list(aa)
  }
  # Covert the Aminoacid sequence dataframe into a vector 
  Aminoacid_seq_list <- list(Aminoacid_seq[,1])
  Aminoacid_seq_vec <- sapply(Aminoacid_seq_list, paste, collapse = "")
  return(Aminoacid_seq_vec)
}


# Logistic Population Growth Curve 

Log_pop_growth_curve <-  function(num, period){
  
}


# Hamming Distance between two words

hamming_distance_calculator <- function(str_a, str_b){
  # check if the number of characters in string a and b are the same
  if (nchar(str_a) == nchar(str_b)){
    # Create a vector that contain all the possible indexes
    indexes = seq(nchar(str_a))
    # convert each string into a list of individual charcters 
    str_a_list <- strsplit(str_a, split = "")
    str_b_list <- strsplit(str_b, split = "")
    # iterate over each index in string a and b and check if the characters are the same
    # if they are not the same add 1 to hamming distance 
    hamming_distance <- 0
    for (i in indexes){
      if (str_a_list[[1]][i] == str_b_list[[1]][i]){
        hamming_distance <- hamming_distance + 0
      } else {
        hamming_distance <- hamming_distance + 1
      }
    }
    return(hamming_distance)

  } else {
    paste("The number of characters in ", str_a, 
          "is different from the number of characters in ", str_b)
  }
}   
    
