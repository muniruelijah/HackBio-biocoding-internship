setwd(paste(getwd(), 
            "/stage-2", 
            sep = ""))
# Import the dataset
trans_data <- read.table("https://gist.githubusercontent.com/stephenturner/806e31fce55a8b7175af/raw/1a507c4c3f9f1baaa3a69187223ff3d3050628d4/results.txt", 
                         header = TRUE)
# Generate a volcano plot 
# To make a volcano plot, plot the negative logarithm of the pvalue against the logarithm of the fold change
plot(trans_data[,2], (-log2(trans_data[,3])),
     xlab = "Log2 (Fold Change)",
     ylab = "Log10 (p-value)")

# Determine the upregulated genes (Genes with Log2FC > 1 and pvalue < 0.01)

upregulated_genes <- subset(trans_data, subset = log2FoldChange > 1 & pvalue < 0.01)

# Determine the downregulated genes (Genes with Log2FC < -1 and pvalue < 0.01)
downregulated_genes <- subset(trans_data, subset = log2FoldChange < -1 & pvalue < 0.01)

# What are the functions of the top 5 up-regulated genes and top 5 down regulated genes. (Use genecards)

# Top five upregulated genes
top_five_upregulated_genes <- head(upregulated_genes, n = 5)
print(top_five_upregulated_genes)
# The top five upregulated genes and molecular their functions are:
# EMILIN2: May be responsible for anchoring smooth muscle cells to elastic fibers, and may be involved not only in the formation of the elastic fiber, but also in the processes that regulate vessel assembly.
# POU3F4: Probable transcription factor which exert its primary action widely during early neural development and in a very limited set of neurons in the mature brain.
# LOC285954: Not available on gene card
# VEPH1: Interacts with TGF-beta receptor type-1 (TGFBR1) and inhibits dissociation of activated SMAD2 from TGFBR1, impeding its nuclear accumulation and resulting in impaired TGF-beta signaling.
# DTHD1: Neutrophil, monocyte counts

# Top five down regulated genes
top_five_downregulated_genes <- head(downregulated_genes, n = 5)
print(top_five_downregulated_genes)
# The top five upregulated genes and molecular their functions are:
# TBX5: DNA-binding protein that regulates the transcription of several genes and is involved in heart development and limb pattern formation
# IFITM1: Plays a key role in the antiproliferative action of IFN-gamma either by inhibiting the ERK activation or by arresting cell growth in G1 phase in a p53-dependent manner.
# LAMA2: Binding to cells via a high affinity receptor, laminin is thought to mediate the attachment, migration and organization of cells into tissues during embryonic development by interacting with other extracellular matrix components. 
# CAV2: Interacts directly with G-protein alpha subunits and can functionally regulate their activity.
# TNN: Involved in neurite outgrowth and cell migration in hippocampal explants. 