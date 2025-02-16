# Task 1
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

#task 2
# create logistic function 
log_function <- function(growth_rate, midpoint, time_taken = 1:120,max_population = 100){
  # create the logistic function equation
  y <- max_population/(1 + exp((-growth_rate*(time_taken - midpoint))))
  return(y)
}

# create a data frame that contains 100 growth curve (logistic function)
# create a vector that contains 100 random growth rates (exponential phase)

random_growth_rate <- sample(seq(from = 0, to = 5, by = 0.01), 100)

# create a vector that contains 100 random midpoints (lag phase)
random_midpoints <- sample(seq(from = 10, to = 70, by = 0.2), 100)

# use the random growth rates and midpoints to generate a data frame of 100 growth curves 
indexed <- 1:100
growth_curve_dataframe <- data.frame(
  curve <- vector()
)
for (index in indexed){
  new_curve <- log_function(random_growth_rate[index], random_midpoints[index])
  growth_curve_dataframe[,ncol(growth_curve_dataframe) + 1] <- list(new_curve)
}
tail(growth_curve_dataframe)



# task 3
carrying_capacity_function <- function(growth_rate, midpoint, carrying_capacity = 80 ,max_population = 100){
  # create the logistic function equation
  time_taken <- midpoint - (log(((max_population/carrying_capacity) - 1))/growth_rate)
  return(time_taken)
}


# task 4
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



