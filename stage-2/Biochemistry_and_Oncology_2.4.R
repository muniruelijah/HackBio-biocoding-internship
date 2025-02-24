setwd(paste(getwd(), 
            "/stage-2", 
            sep = ""))

# Import the datasets
sift_data <- read.table("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/datasets/sift.tsv",
                        header = TRUE)
foldx_data <- read.table("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/datasets/foldX.tsv",
                         header = TRUE)

# create a column 'specific_Protein_aa' which will be a concatenation of the Protein and Amino_acid columns
sift_data$specific_Protein_aa <- paste(sift_data$Protein , "_" ,
                                       sift_data$Amino_Acid , sep = "")

foldx_data$specific_Protein_aa <- paste(foldx_data$Protein, "_",
                                        foldx_data$Amino_Acid, sep = "")
# Using the specific_Protein_aa column, merge sift and foldx dataset into one final dataframe

merged_data <- merge(sift_data, foldx_data, by = "specific_Protein_aa")

#  Find all mutations that have a SIFT score below 0.05 and FoldX Score above 2

mutations <-  subset(merged_data, 
                     subset = merged_data$sift_Score < 0.05 & merged_data$foldX_Score > 2)

# Investigate for the amino acid that has the most functional and structural impact

# Get each amino acid using the first letter from the amino acid column
replaced_aminoacids <- c()
for (aa in mutations$Amino_Acid.x){
  amino_acid <- substr(aa, 1,1)
  replaced_aminoacids <- c(replaced_aminoacids, amino_acid)
}

# Generate a frequency table for all the amino acids

aminoacid_freq <- table(replaced_aminoacids)

# Using the amino frequency table above, generate a barplot and pie chart to represent the frequency of the amino acids.

# Barplot 
barplot(aminoacid_freq,
        main = "AMINO ACID FREQUENCY",
        xlab = "Amino Acid",
        ylab = "Frequency",
        col = "navy")
# piechart
pie(aminoacid_freq,
    main = "AMINO ACID FRQUENCY(PROPORTIONS)",
    col = rainbow(20))

# Briefly describe the amino acid with the highest impact on protein structure and function
# The amino acid with the highest impact on protein structure and function is Glycine (G)

# What can you say about the structural property and functional property of amino acids with more than 100 occurences.
hundred_plus_occurrance <- aminoacid_freq[aminoacid_freq > 100]