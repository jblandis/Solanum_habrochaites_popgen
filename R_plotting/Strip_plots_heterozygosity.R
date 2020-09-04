#use this script to generate strip plots for heterozygosity values

mydata <- read.csv("out_new.het.csv",header=TRUE)

pdf(file="Heterozygosity_final_plots.pdf",8,5)
stripchart(Obs_Het~Final_update, data=mydata, vertical=TRUE, main="Distribution of Expected Heterozygosity", ylab="Fraction Heterozygosity", group.names=c("SC-1", "SC-2/SC-3", "SC-4", "SC-5", "SI/MP","S. pennellii"), method="jitter",pch=16)
medians <- tapply(mydata$Obs_Het, mydata$Final_update, median)
points(medians, pch="-", cex=3, col="red")
dev.off()

pdf(file="Expected_Heterozygosity_final_plots.pdf",8,5)
stripchart(Exp_Het~Final_update, data=mydata, vertical=TRUE, main="Distribution of Expected Heterozygosity", ylab="Expected Heterozygosity", group.names=c("SC-1", "SC-2/SC-3", "SC-4", "SC-5", "SI/MP","S. pennellii"), method="jitter",pch=16)
medians <- tapply(mydata$Exp_Het, mydata$Final_update, median)
points(medians, pch="-", cex=3, col="red")
dev.off()

pdf(file="Inbreeding_coefficients_plots.pdf",8,5)
stripchart(F~Final_update, data=mydata, vertical=TRUE, main="Inbreeding Coefficient", ylab="Inbreeding Coefficient", group.names=c("SC-1", "SC-2/SC-3", "SC-4", "SC-5", "SI/MP","S. pennellii"), method="jitter",pch=16)
medians <- tapply(mydata$F, mydata$Final_update, median)
points(medians, pch="-", cex=3, col="red")
dev.off()


pdf(file="Missing.pdf",7,5)
stripchart(FMISS~Pop, data=mydata, vertical=TRUE, main="Distribution of Missing Data", ylab="Fraction Missing", group.names=c("1","2","3","4","5","6","7","Sp"), method="jitter",pch=16)
dev.off()

pdf(file="Depth.pdf",7,5)
stripchart(Mean_depth~Pop, data=mydata, vertical=TRUE, main="Distribution of Mean Depth", ylab="Mean Depth", group.names=c("1","2","3","4","5","6","7","Sp"), method="jitter",pch=16)
dev.off()
