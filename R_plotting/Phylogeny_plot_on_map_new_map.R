
library(phytools)
library(mapdata)
library(viridis)
#devtools::install_github("ropensci/rnaturalearthhires")
library(rnaturalearth)
library(rnaturalearthdata)
library(ggplot2)

mytree <- read.nexus(file="MCC_modified_to_read.nex")
mydata <- read.csv(file="map_plotting_locations.csv",header=TRUE,row.names=1)

mytree <- drop.tip(mytree,tip=c("LA1674","LA1809","LA1941"))

tips <- mytree$tip.label
write.nexus(mytree, file="MCC_no_outgroups.nex")

#read in tree
newtree2 <- read.tree("MCC_no_out_to_read_in.tre")
plot(newtree2,cex=0.5)
#identify(newtree2, nodes=TRUE)

#identify(newtree, nodes=TRUE)
newtree <- rotateNodes(newtree2,nodes=78)
newtree <- rotateNodes(newtree,nodes=79)
newtree <- rotateNodes(newtree,nodes=63)
newtree <- rotateNodes(newtree,nodes=64)
newtree <- rotateNodes(newtree,nodes=68)
newtree <- rotateNodes(newtree,nodes=54)
newtree <- rotateNodes(newtree,nodes=55)
newtree <- rotateNodes(newtree,nodes=56)
newtree <- rotateNodes(newtree,nodes=60)
newtree <- rotateNodes(newtree,nodes=64)
newtree <- rotateNodes(newtree,nodes=66)
newtree <- rotateNodes(newtree,nodes=67)
newtree <- rotateNodes(newtree,nodes=69)
newtree <- rotateNodes(newtree,nodes=72)
newtree <- rotateNodes(newtree,nodes=65)
newtree <- rotateNodes(newtree,nodes=66)
newtree <- rotateNodes(newtree,nodes=83)
newtree <- rotateNodes(newtree,nodes=84)
newtree <- rotateNodes(newtree,nodes=85)
newtree <- rotateNodes(newtree,nodes=86)
newtree <- rotateNodes(newtree,nodes=87)


pdf("test.pdf",10,10)
plot(newtree,cex=0.5)
nodelabels()
tiplabels()
dev.off()

tips <- newtree$tip.label
tips

is_tip <- newtree$edge[,2] <= length(newtree$tip.label)
ordered_tips <- newtree$edge[is_tip, 2]
newtree$tip.label[ordered_tips]

#inferno(8)
cols <- c("#000004FF","#65156EFF","#000004FF","#000004FF","#000004FF","#65156EFF","#000004FF","#65156EFF","#65156EFF","#65156EFF","#65156EFF","#65156EFF","#65156EFF","#D44842FF","#65156EFF","#D44842FF","#65156EFF","#D44842FF","#65156EFF","#65156EFF","#D44842FF","#65156EFF","#65156EFF","#65156EFF","#65156EFF","#D44842FF","#D44842FF","#65156EFF","#FAC127FF","#65156EFF","#65156EFF","#FAC127FF","#65156EFF","#65156EFF","#65156EFF","#65156EFF","#000004FF","#000004FF","#000004FF","#000004FF","#000004FF","#65156EFF","#65156EFF","#000004FF","#000004FF","#65156EFF","#65156EFF","#000004FF","#000004FF","#65156EFF")
toPlot<-setNames(cols,tips)
toPlot

#original code for first plotting of basic map
#pdf("Phylogeny_and_map_basic.pdf",12,12)
#obj <- phylo.to.map(newtree,mydata,plot=FALSE,xlim=c(-89,-68), ylim=c(-16,4))
#plot(obj,ftype="i",cex.points=c(1.2,1.3),direction="rightwards", colors=toPlot)
#legend("topleft", legend=c("0-0.04","0.05-0.09","0.1-0.14","0.15-0.2"), fill=c("#000004FF","#9C179EFF","#D44842FF", "#FAC127FF"),cex=1,title="Observed heterozygosity")
#dev.off()

#install.packages("rnaturalearth", "rnaturalearthdata")
shabregion <- rnaturalearth::ne_states(c("ecuador", "peru"))
shabregion

pdf("Phylogeny_and_map_modified_regions_new.pdf",12,12)
obj <- phylo.to.map(newtree,mydata,plot=FALSE,database=basemap)
plot(obj,ftype="i",cex.points=c(1.2,1.3),fsize=0.8,direction="rightwards", colors=toPlot)
legend("topleft", legend=c("0-0.04","0.05-0.09","0.1-0.14","0.15-0.2"), fill=c("#000004FF","#9C179EFF","#D44842FF", "#FAC127FF"),cex=1,title="Observed heterozygosity")
dev.off()
