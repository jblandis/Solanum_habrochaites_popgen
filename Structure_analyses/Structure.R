#script to use LEA for Structure/Admixture analyses

#you will need to install this packages if its the first time on a new computer
#install.packages(c("fields","RColorBrewer","mapplots"))
#source("http://bioconductor.org/biocLite.R")
#biocLite("LEA")

library(fields)
library(LEA)

#additional files need from the structure format
source("Conversion.R")
source("POPSutilities.R")

#import input file, if this is coming directly from Stacks you will need to delete the first two rows of the file. Should be left with just the data, no other information
struct2geno(file = "Shabrocahites_no_outgroups.recode.p.structure", TESS = FALSE, diploid = TRUE, FORMAT = 2,extra.row = 0, extra.col = 0, output = "Shab.geno")


#test for best K
obj.snmf = snmf("Shab.geno", K = 1:25,  ploidy = 2, entropy = T, alpha = 100, project = "new")
pdf(file="delta_K.pdf")
plot(obj.snmf, col = "blue4", cex = 2.0, pch = 19,cex.axis=1.4,cex.lab=1.4)
dev.off()


##########
### K = 2
##########
obj.snmf = snmf("Shab.geno", K = 2, alpha = 100, project = "new", iterations=200)
qmatrix = Q(obj.snmf, K = 2)
palette4 <- c("#FF9326","#FFFB23")
names <- c("LA1625","LA0407","LA1223","LA2119","LA2128","LA1252","LA2861","LA2114","LA2105","LA2106","LA2103","LA2859","LA2860","LA2869","LA2855","LA2100","LA2098_1","LA2098_2","LA2650","LA2175","LA1737","LA1739","LA2541","LA2171","LA2204","LA2196","LA2156","LA2155","LA2324","LA1352","LA1354","LA2329","LA1986","LA2574","LA1362","LA1361","LA1778","LA2975","LA1777","LA2976","LA1772","LA0094","LA1298","LA1560","LA1753","LA2409","LA1691","LA1681","LA1731","LA1721","LA1928")
#plot classic structure diagram
pdf(file="K_equals_2.pdf",10,5)
barplot(t(qmatrix), col = c(palette4), border = NA, space = 0,names.arg=names,las=2,cex.names=0.7,
        xlab = "Individuals", ylab = "Admixture coefficients")
dev.off()


#######
## K = 3
#######
obj.snmf = snmf("Shab.geno", K = 3, alpha = 100, project = "new", iterations=200)
qmatrix = Q(obj.snmf, K = 3)
palette4 <- c("#FFFB23","#FF9326","#DF0101")
names <- c("LA1625","LA0407","LA1223","LA2119","LA2128","LA1252","LA2861","LA2114","LA2105","LA2106","LA2103","LA2859","LA2860","LA2869","LA2855","LA2100","LA2098_1","LA2098_2","LA2650","LA2175","LA1737","LA1739","LA2541","LA2171","LA2204","LA2196","LA2156","LA2155","LA2324","LA1352","LA1354","LA2329","LA1986","LA2574","LA1362","LA1361","LA1778","LA2975","LA1777","LA2976","LA1772","LA0094","LA1298","LA1560","LA1753","LA2409","LA1691","LA1681","LA1731","LA1721","LA1928")
#plot classic structure diagram
pdf(file="K_equals_3.pdf",10,5)
barplot(t(qmatrix), col = c(palette4), border = NA, space = 0,names.arg=names,las=2,cex.names=0.7,
        xlab = "Individuals", ylab = "Admixture coefficients")
dev.off()


orginal_palette4 <- c("#FFFB23","#FF9326","#DF0101","#A945FF")

#run with best K of 4
obj.snmf = snmf("Shab.geno", K = 4, alpha = 100, project = "new", iterations=500)
qmatrix = Q(obj.snmf, K = 4)
palette4 <- c("#FF9326","#DF0101","#FFFB23","#A945FF")
names <- c("LA1625","LA0407","LA1223","LA2119","LA2128","LA1252","LA2861","LA2114","LA2105","LA2106","LA2103","LA2859","LA2860","LA2869","LA2855","LA2100","LA2098_1","LA2098_2","LA2650","LA2175","LA1737","LA1739","LA2541","LA2171","LA2204","LA2196","LA2156","LA2155","LA2324","LA1352","LA1354","LA2329","LA1986","LA2574","LA1362","LA1361","LA1778","LA2975","LA1777","LA2976","LA1772","LA0094","LA1298","LA1560","LA1753","LA2409","LA1691","LA1681","LA1731","LA1721","LA1928")
#plot classic structure diagram
pdf(file="K_equals_4.pdf",7,3)
barplot(t(qmatrix), col = c(palette4), border = NA, space = 0,names.arg=names,las=2,cex.names=0.7,
        xlab = "Individuals", ylab = "Admixture coefficients")
dev.off()

#####
# K = 5
#####
obj.snmf = snmf("Shab.geno", K = 5, alpha = 100, project = "new", iterations=200)
qmatrix = Q(obj.snmf, K = 5)

palette5 <- c("#A945FF","#FFFB23","#FF9326","#DF0101","#9999FF")
names <- c("LA1625","LA0407","LA1223","LA2119","LA2128","LA1252","LA2861","LA2114","LA2105","LA2106","LA2103","LA2859","LA2860","LA2869","LA2855","LA2100","LA2098_1","LA2098_2","LA2650","LA2175","LA1737","LA1739","LA2541","LA2171","LA2204","LA2196","LA2156","LA2155","LA2324","LA1352","LA1354","LA2329","LA1986","LA2574","LA1362","LA1361","LA1778","LA2975","LA1777","LA2976","LA1772","LA0094","LA1298","LA1560","LA1753","LA2409","LA1691","LA1681","LA1731","LA1721","LA1928")
#plot classic structure diagram
pdf(file="K_equals_5.pdf",10,5)
barplot(t(qmatrix), col = c(palette5), border = NA, space = 0,names.arg=names,las=2,cex.names=0.7,
        xlab = "Individuals", ylab = "Admixture coefficients")
dev.off()

#####
# K = 6
#####
obj.snmf = snmf("Shab.geno", K = 6, alpha = 100, project = "new", iterations=200)
qmatrix = Q(obj.snmf, K = 6)

palette6 <- c("#FF9326","#A945FF","#FFFB23","#9999FF","#04B404","#DF0101")
names <- c("LA1625","LA0407","LA1223","LA2119","LA2128","LA1252","LA2861","LA2114","LA2105","LA2106","LA2103","LA2859","LA2860","LA2869","LA2855","LA2100","LA2098_1","LA2098_2","LA2650","LA2175","LA1737","LA1739","LA2541","LA2171","LA2204","LA2196","LA2156","LA2155","LA2324","LA1352","LA1354","LA2329","LA1986","LA2574","LA1362","LA1361","LA1778","LA2975","LA1777","LA2976","LA1772","LA0094","LA1298","LA1560","LA1753","LA2409","LA1691","LA1681","LA1731","LA1721","LA1928")
#plot classic structure diagram
pdf(file="K_equals_6.pdf",10,5)
barplot(t(qmatrix), col = c(palette6), border = NA, space = 0,names.arg=names,las=2,cex.names=0.7,
        xlab = "Individuals", ylab = "Admixture coefficients")
dev.off()

#####
# K = 7
#####
obj.snmf = snmf("Shab.geno", K = 7, alpha = 100, project = "new", iterations=200)
qmatrix = Q(obj.snmf, K = 7)

#original
#palette7 <- c("#FF9326", "#04B404", "#2121D9", "#9999FF", "#FFFB23", "#DF0101", "#A945FF")


palette7 <- c("#04B404","#9999FF","#A945FF","#2121D9","#FFFB23","#FF9326","#DF0101")
names <- c("LA1625","LA0407","LA1223","LA2119","LA2128","LA1252","LA2861","LA2114","LA2105","LA2106","LA2103","LA2859","LA2860","LA2869","LA2855","LA2100","LA2098_1","LA2098_2","LA2650","LA2175","LA1737","LA1739","LA2541","LA2171","LA2204","LA2196","LA2156","LA2155","LA2324","LA1352","LA1354","LA2329","LA1986","LA2574","LA1362","LA1361","LA1778","LA2975","LA1777","LA2976","LA1772","LA0094","LA1298","LA1560","LA1753","LA2409","LA1691","LA1681","LA1731","LA1721","LA1928")
#plot classic structure diagram
pdf(file="K_equals_7.pdf",10,5)
barplot(t(qmatrix), col = c(palette7), border = NA, space = 0,names.arg=names,las=2,cex.names=0.7,
        xlab = "Individuals", ylab = "Admixture coefficients")
dev.off()

#####
# K = 8
#####
obj.snmf = snmf("Shab.geno", K = 8, alpha = 100, project = "new", iterations=200)
qmatrix = Q(obj.snmf, K = 8)

#original
#palette7 <- c("#FF9326", "#04B404", "#2121D9", "#9999FF", "#FFFB23", "#DF0101", "#A945FF")

palette8 <- c("#9999FF","#FFFB23","#A945FF","#2121D9","#FF9326","gray","#04B404","#DF0101")
names <- c("LA1625","LA0407","LA1223","LA2119","LA2128","LA1252","LA2861","LA2114","LA2105","LA2106","LA2103","LA2859","LA2860","LA2869","LA2855","LA2100","LA2098_1","LA2098_2","LA2650","LA2175","LA1737","LA1739","LA2541","LA2171","LA2204","LA2196","LA2156","LA2155","LA2324","LA1352","LA1354","LA2329","LA1986","LA2574","LA1362","LA1361","LA1778","LA2975","LA1777","LA2976","LA1772","LA0094","LA1298","LA1560","LA1753","LA2409","LA1691","LA1681","LA1731","LA1721","LA1928")
#plot classic structure diagram
pdf(file="K_equals_8.pdf",10,5)
barplot(t(qmatrix), col = c(palette8), border = NA, space = 0,names.arg=names,las=2,cex.names=0.7,
        xlab = "Individuals", ylab = "Admixture coefficients")
dev.off()

