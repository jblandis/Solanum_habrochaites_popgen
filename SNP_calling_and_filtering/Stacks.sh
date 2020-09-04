
module load stacks/2.3b

#make need directories
#mkdir ref_wrapper_2.3b
#mkdir final_data_set_ind
#mkdir final_data_set_SNAPP
#mkdir final_data_set_Map

#use the ref.map wrapper to run through pstacks, cstacks, and sstacks
/opt/linux/centos/7.x/x86_64/pkgs/stacks/2.3b/bin/ref_map.pl --samples sorted_bam_files/ --popmap popmap.txt -o ref_wrapper_2.3b/ -T 16

#original
populations --batch_size 1000 -P ref_wrapper_2.3b/ -M popmap.txt -t 8 --ordered_export --vcf

#after vcftools filters
populations  --batch_size 1 -V Shal_LD_pruned_SNPs.recode.vcf -O final_data_set/ -M popmap.txt -t 16 --ordered-export --fstats --vcf --treemix --plink --structure --radpainter --genepop --fasta_samples

#output files with no populations for TreeMix, BayeScan, and IBD
populations  --batch_size 1 -V Shal_LD_pruned_SNPs.recode.vcf -O final_data_set_ind/ -M popmap_ind.txt -t 8 --ordered-export --treemix --plink --radpainter --genepop

#after vcftools filters based on SNAPP tree
populations  --batch_size 1 -V Shal_LD_pruned_SNPs.recode.vcf -O final_data_set_SNAPP/ -M popmap_SNAPP.txt -t 16 --ordered-export --fstats --vcf --treemix --plink --structure --radpainter --genepop --fasta_samples
