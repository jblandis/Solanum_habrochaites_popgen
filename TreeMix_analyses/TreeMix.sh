#TreeMix script using treemix version 1.13 to test 0 to 10 migrations using the SNP data set
# of Solanum habrochaites LD pruned VCF created in Stacks

#install TreeMix using conda environment
#conda create --name Treemix python=3.6

# activate that environment
#conda activate Treemix

# the new environment won't have the dependencies you need, but installing them once is all you need. Just say 'yes' to installing them when prompted
#conda install Treemix

#conda activate Treemix

#######################
### zero migration event
#######################
echo "Test zero migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab0

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab0

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab0

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 0 -o Shab0

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 0 -k 500 -o Shab0

#######################
### one migration event
#######################
echo "Test one migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab1

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab1

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab1

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 1 -o Shab1

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 1 -k 500 -o Shab1


#######################
### two migration events
#######################
echo "Test two migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab2

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab2

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab2

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 2 -o Shab2

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 2 -k 500 -o Shab2

#######################
### three migration events
#######################
echo "Test three migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab3

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab3

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab3

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 3 -o Shab3

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 3 -k 500 -o Shab3

#######################
### four migration events
#######################
echo "Test four migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab4

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab4

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab4

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 4 -o Shab4

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 4 -k 500 -o Shab4

#######################
### five migration events
#######################
echo "Test five migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab5

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab5

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab5

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 5 -o Shab5

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 5 -k 500 -o Shab5

#######################
### six migration events
#######################
echo "Test six migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab6

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab6

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab6

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 6 -o Shab6

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 6 -k 500 -o Shab6

#######################
### seven migration events
#######################
echo "Test seven migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab7

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab7

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab7

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 7 -o Shab7

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 7 -k 500 -o Shab7

#######################
### eight migration events
#######################
echo "Test eight migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab8

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab8

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab8

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 8 -o Shab8

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 8 -k 500 -o Shab8

#######################
### nine migration events
#######################
echo "Test nine migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab9

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab9

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab9

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 9 -o Shab9

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 9 -k 500 -o Shab9

#######################
### ten migration events
#######################
echo "Test ten migration event"

#build tree assuming populations are independent
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -o Shab10

#place outgroup
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -o Shab10

#use sliding window 1,000 SNPs to build the tree to account for LD
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -o Shab10

#build the tree with allowed migration events
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -k 1000 -m 10 -o Shab10

#bootstrap the tree
treemix -i Shab_LD_pruned_SNPs.recode.p.snps.p.treemix.gz -root Sp -bootstrap -m 10 -k 500 -o Shab10
