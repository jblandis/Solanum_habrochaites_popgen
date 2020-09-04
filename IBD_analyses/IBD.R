library(adegenet)
library(ade4)

gen <- import2genind(file="Shab_LD_pruned_SNPs.recode.p.snps.genepop.gen")


#import lat, long in XY format (long,lat)
xylist <- read.table(file="latlong.txt", header=TRUE)
rownames(xylist) <- xylist[,1]
xylist[,1] <- NULL
colnames(xylist) <- c("x","y")

#load lat and long into @other slot
gen@other$xy <- xylist

#view lat/long storeed in genind
xylist

toto <- genind2genpop(gen,process.other=TRUE)
toto

Dgen <- dist.genpop(toto, method=2)
Dgen
Dgeo <- dist(toto$other$xy,method="euclidean")
Dgeo
dim(as.matrix(Dgen))
dim(as.matrix(Dgeo))
#geo <- read.csv(file="distances.csv", header=TRUE)
#popnames <- as.vector(geo[,1])
#inital <-as.matrix(geo[,2:ncol(geo)])
#dimnames(inital)<-list(popnames,popnames)
#distmatric <-as.dist(inital)


ibd <- mantel.randtest(Dgen,Dgeo,nrepet=10000)
ibd

pdf(file="IBD_plot.pdf")
plot(ibd,main="Isolation by distance",xlab="Permuted simulated correlations")
dev.off()

#plot genetic distance against geographic distance
pdf(file="GeoDistance_vs_geneticDistance.pdf")
plot(Dgeo,Dgen, xlab="Geographic distance (km)", ylab="Genetic distance")
dev.off()

mydf <- as.data.frame(as.matrix(Dgen))
write.csv(mydf, file="genetic_distance_matrix.csv")

Fst <-read.csv(file="Fst.csv",header=FALSE)
pdf(file="Fst_histogram.pdf")
hist(Fst$V1,breaks=50,xlim=c(0,1), xlab="Between population Fst")
dev.off()
