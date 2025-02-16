library(tidyverse)
library(RColorBrewer) 
library(ggrepel)
install.packages("ggrepel")
install.packages("tidyverse")

genedata <- read.table("Sun-etal-2021-IP-MS-PAD4-vs-YFP.txt", header = TRUE, sep = "\t", stringsAsFactors = TRUE)
# Create a basic volcano plot
genedata$label_2 <- NA
genedata$label_2[genedata$log2_PAD4_vs_YFP > 10] <- data$Protein.IDs[genedata$log2_PAD4_vs_YFP > 10]
str(genedata)
summary(genedata)

ggplot(data = genedata, 
      aes(x = log2_PAD4_vs_YFP, y = -log10(pval_PAD4_vs_YFP), label = label_2)) + 
      geom_point(shape = 16) +
      theme_classic() +
      geom_vline(xintercept = c(-0.6, 0.6), col = "red", linetype = 'solid') +
      geom_hline(yintercept = -log10(0.005), col = "red", linetype = 'solid') +
      ggtitle("Volcano plot PAD4 vs YFP") +
      xlab("log2 abundance PAD4 vs YFP") +
      ylab("-log10(p-value)")
      geom_text_repel()
    
#since the labelling of the most abundant protein wasn't sucessful, I
#unfortunatley could not make the boxplots.