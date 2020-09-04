#Make sure the necessary files are install for R
#if (!require("pacman")) install.packages("pacman")
#pacman::p_load(data.table, ggplot2, ggpmisc)
#if (!requireNamespace("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#BiocManager::install("SNPRelate", version = "3.8")

library(gdsfmt)
library(SNPRelate)
library(VariantAnnotation)

#if (!requireNamespace("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#BiocManager::install("VariantAnnotation", version = "3.8")

#call VCF file; the file uploaded to GitHub is bzipped, this needs to be unzipped first
vcf.fn <- "Shab_LD_pruned_SNPs.recode.p.snps.vcf"

#convert to GDS format for SNPRelate analysis
snpgdsVCF2GDS(vcf.fn, "test.gds", method="biallelic.only", ignore.chr.prefix="SH_contig_")

#summarize data
snpgdsSummary("test.gds")

genofile <- snpgdsOpen("test.gds", readonly=FALSE)
#LD prune
set.seed(1000)
snpset <- snpgdsLDpruning(genofile, ld.threshold=0.25, maf=0.05, slide.max.n=5000,start.pos="random")

names(snpset)
snpset.id <- unlist(snpset)

#run PCA
pca <- snpgdsPCA(genofile, snp.id=snpset.id, num.thread=2)
pdf("PCA_plot_eigenvectors.pdf")
plot(pca)
dev.off()

# variance proportion (%)
pc.percent <- pca$varprop*100
head(round(pc.percent, 2))

# make a data.frame
tab <- data.frame(sample.id = pca$sample.id,
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)
head(tab)

pop_code <- add.gdsn(genofile, "popmap.txt")

plot(tab$EV2, tab$EV1, xlab="eigenvector 2", ylab="eigenvector 1")

# Get sample id
sample.id <- read.gdsn(index.gdsn(genofile, "sample.id"))
pop_code <- scan("pop.txt", what=character())
table(pop_code)
head(cbind(sample.id, pop_code))

tab <- data.frame(sample.id = pca$sample.id,
                  pop = factor(pop_code)[match(pca$sample.id, sample.id)],
                  EV1 = pca$eigenvect[,1],    # the first eigenvector
                  EV2 = pca$eigenvect[,2],    # the second eigenvector
                  stringsAsFactors = FALSE)
head(tab)

#library(randomcoloR)
#n <- 8
palette <- c("#FF9326","#04B404","#9999FF","#FFFB23","#DF0101","#A945FF","black")

pdf("PCA_by_population.pdf")
plot(tab$EV1,tab$EV2, col=as.integer(tab$pop), xlab="eigenvector 1", ylab="eigenvector 2")
par(xpd=TRUE)
legend("topleft",ncol=2, cex=0.8, legend=levels(tab$pop), pch="o", col=1:nlevels(tab$pop))
dev.off()

pdf("PCA_unique_colors_PC1vsPC2.pdf",10,10)
col.list <- palette
plot(tab$EV1,tab$EV2, col=col.list[as.integer(tab$pop)], cex=3, pch=16, main="SNP PCA", xlab="eigenvector 1 (16.9%)", ylab="eigenvector 2 (14.8%)")
legend("topleft", legend=levels(tab$pop), cex=1,pch=20, col=col.list[1:nlevels(tab$pop)])
dev.off()

pdf("PCA_unique_colors_PC2vsPC3.pdf",10,10)
col.list <- palette
plot(tab$EV2,tab$EV3, col=col.list[as.integer(tab$pop)], cex=3, pch=16, main="SNP PCA", xlab="eigenvector 2 (14.8%)", ylab="eigenvector 3 (9.3%)")
legend("topleft", legend=levels(tab$pop), cex=1,pch=20, col=col.list[1:nlevels(tab$pop)])
dev.off()
