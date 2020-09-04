

##############################
### final filtering parameters
##############################

vcftools --vcf populations.snps.vcf --max-missing 0.8 --min-meanDP 6 --max-meanDP 30 --maf 0.05 --mac 3 --recode --recode-INFO-all --out populations2.snps

#gives missing proportion of loci for each individual
vcftools --vcf populations2.snps.recode.vcf --missing-indv

#create a list of individuals with at least 50% missing data
awk '$5 > 0.5' out.imiss | cut -f1 > lowDP50.indv

vcftools --vcf populations2.snps.recode.vcf --remove lowDP50.indv --max-missing 0.8 --maf 0.05 --mac 3 --recode --recode-INFO-all --out Ready_for_plink

plink --vcf Ready_for_plink.recode.vcf --make-bed --allow-extra-chr --double-id --out pop_sorted 

#tests for pairwise LD in a sliding window (5kb window with a step size of 0.5 and r^2 of 0.5)
plink --bfile pop_sorted --indep-pairwise 10 5 0.2 --allow-extra-chr --double-id --threads 8 

awk 'FNR==NR{a[$1];next}($2 in a){print}' plink.prune.out pop_sorted.bim > excluded.txt

awk '{print $1,$4}' excluded.txt > To_prune.txt

#vcftools to prune out selected SNPs from plink
vcftools --vcf Ready_for_plink.recode.vcf --exclude-positions To_prune.txt --max-missing 0.8 --min-meanDP 6 --max-meanDP 30 --maf 0.05 --mac 3 --recode --recode-INFO-all --out Shal_LD_pruned_SNPs


#gives missing proportion of loci for each individual
#vcftools --vcf Shal_LD_pruned_SNPs.recode.vcf --missing-indv

#average depth for each individual
#vcftools --vcf Shal_LD_pruned_SNPs.recode.vcf --depth 

#observed and expected heterozygosity
vcftools --vcf Shal_LD_pruned_SNPs.recode.vcf --het

