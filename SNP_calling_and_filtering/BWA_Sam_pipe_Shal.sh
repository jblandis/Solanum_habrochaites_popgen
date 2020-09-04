
mkdir BWA
mkdir bam_files
mkdir sorted_bam_files


#to index a fasta file
bwa index merged_SH_contigs.mod.fa


#Read group information starts with "@RG
#ID: is unique identifier of the samples, for now doing the sample name and the barcode info
#SM: is the sample name
#PL: is the sequencing equipment, in almost all cases this will be Illumina
#PU: is the run identifier, the lane, followed by the specific barcode of the sample
#LB: is the library count

#perform the alignment
bwa mem -t 8 -R "@RG\tID:LA0094-1-rep1\tSM:LA0094\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA0094-1-rep1.fq.gz > BWA/LA0094.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA0407-1-repAll\tSM:LA0407\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA0407-1-repAll.fq.gz > BWA/LA0407.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA0716-1-rep2\tSM:LA0716\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA0716-1-rep2.fq.gz > BWA/LA0716.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1223-1-rep1\tSM:LA1223\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1223-1-rep1.fq.gz > BWA/LA1223.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1252-1-repAll\tSM:LA1252\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1252-1-repAll.fq.gz > BWA/LA1252.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1298-1-rep1\tSM:LA1298\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1298-1-rep1.fq.gz > BWA/LA1298.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1352-1-repAll\tSM:LA1352\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1352-1-repAll.fq.gz > BWA/LA1352.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1354-1-rep1\tSM:LA1354\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1354-1-rep1.fq.gz > BWA/LA1354.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1361-1-rep1\tSM:LA1361\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1361-1-rep1.fq.gz > BWA/LA1361.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1362-1-rep1\tSM:LA1362\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1362-1-rep1.fq.gz > BWA/LA1362.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1560-1-rep1\tSM:LA1560\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1560-1-rep1.fq.gz > BWA/LA1560.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1625-1-repAll\tSM:LA1625\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1625-1-repAll.fq.gz > BWA/LA1625.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1674-1-rep1\tSM:LA1674\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1674-1-rep1.fq.gz > BWA/LA1674.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1681-1-rep1\tSM:LA1681\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1681-1-rep1.fq.gz > BWA/LA1681.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1691-1-rep1\tSM:LA1691\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1691-1-rep1.fq.gz > BWA/LA1691.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1721-1-rep1\tSM:LA1721\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1721-1-rep1.fq.gz > BWA/LA1721.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1731-1-repAll\tSM:LA1731\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1731-1-repAll.fq.gz > BWA/LA1731.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1737-1-repAll\tSM:LA1737\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1737-1-repAll.fq.gz > BWA/LA1737.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1739-1-rep1\tSM:LA1739\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1739-1-rep1.fq.gz > BWA/LA1739.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1753-1-repAll\tSM:LA1753\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1753-1-repAll.fq.gz > BWA/LA1753.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1772-1-rep1\tSM:LA1772\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1772-1-rep1.fq.gz > BWA/LA1772.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1777-1-repAll\tSM:LA1777\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1777-1-repAll.fq.gz > BWA/LA1777.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1778-1-repAll\tSM:LA1778\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1778-1-repAll.fq.gz > BWA/LA1778.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1809-1-rep1\tSM:LA1809\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1809-1-rep1.fq.gz > BWA/LA1809.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1928-1-repAll\tSM:LA1928\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1928-1-repAll.fq.gz > BWA/LA1928.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1941-1-rep1\tSM:LA1941\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1941-1-rep1.fq.gz > BWA/LA1941.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1978-1-rep1\tSM:LA1978\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1978-1-rep1.fq.gz > BWA/LA1978.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA1986-1-repAll\tSM:LA1986\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA1986-1-repAll.fq.gz > BWA/LA1986.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2100-1-rep1\tSM:LA2100\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2100-1-rep1.fq.gz > BWA/LA2100.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2103-1-rep1\tSM:LA2103\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2103-1-rep1.fq.gz > BWA/LA2103.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2105-1-repAll\tSM:LA2105\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2105-1-repAll.fq.gz > BWA/LA2105.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2106-1-rep1\tSM:LA2106\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2106-1-rep1.fq.gz > BWA/LA2106.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2114-1-rep1\tSM:LA2114\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2114-1-rep1.fq.gz > BWA/LA2114.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2119-1-rep1\tSM:LA2119\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2119-1-rep1.fq.gz > BWA/LA2119.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2128-1-rep1\tSM:LA2128\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2128-1-rep1.fq.gz > BWA/LA2128.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2155-1-repAll\tSM:LA2155\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2155-1-repAll.fq.gz > BWA/LA2155.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2156-1-rep1\tSM:LA2156\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2156-1-rep1.fq.gz > BWA/LA2156.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2171-1-rep1\tSM:LA2171\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2171-1-rep1.fq.gz > BWA/LA2171.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2175-1-repAll\tSM:LA2175\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2175-1-repAll.fq.gz > BWA/LA2175.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2196-1-rep1\tSM:LA2196\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2196-1-rep1.fq.gz > BWA/LA2196.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2204-1-rep1\tSM:LA2204\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2204-1-rep1.fq.gz > BWA/LA2204.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2324-1-rep1\tSM:LA2324\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2324-1-rep1.fq.gz > BWA/LA2324.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2329-1-rep1\tSM:LA2329\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2329-1-rep1.fq.gz > BWA/LA2329.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2409-1-rep1\tSM:LA2409\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2409-1-rep1.fq.gz > BWA/LA2409.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2541-1-rep1\tSM:LA2541\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2541-1-rep1.fq.gz > BWA/LA2541.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2574-1-rep1\tSM:LA2574\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2574-1-rep1.fq.gz > BWA/LA2574.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2650-1-rep1\tSM:LA2650\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2650-1-rep1.fq.gz > BWA/LA2650.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2855-1-rep1\tSM:LA2855\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2855-1-rep1.fq.gz > BWA/LA2855.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2859-1-rep1\tSM:LA2859\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2859-1-rep1.fq.gz > BWA/LA2859.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2860-1-rep1\tSM:LA2860\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2860-1-rep1.fq.gz > BWA/LA2860.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2861-1-repAll\tSM:LA2861\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2861-1-repAll.fq.gz > BWA/LA2861.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2868-1-rep1\tSM:LA2868\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2868-1-rep1.fq.gz > BWA/LA2868.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2869-1-rep1\tSM:LA2869\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2869-1-rep1.fq.gz > BWA/LA2869.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2975-1-repAll\tSM:LA2975\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2975-1-repAll.fq.gz > BWA/LA2975.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2976-1-repAll\tSM:LA2976\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2976-2-repAll.fq.gz > BWA/LA2976.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2098-1-repAll\tSM:LA2098_1\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2098-1-repAll.fq.gz > BWA/LA2098_1.bwa.sam
bwa mem -t 8 -R "@RG\tID:LA2098-2-rep1\tSM:LA2098_2\tPL:Illumina\tPU:HWM53BBXX.1.GACCCC\tLB:Library1" merged_SH_contigs.mod.fa reads/LA2098-2-rep1.fq.gz > BWA/LA2098_2.bwa.sam


#Control where to start the process (1 is beginning):
start_step=1


#convert SAM to BAM for sorting
if [[ $start_step -le 1 ]]
then
	for file in BWA/*bwa.sam
	do
		echo "Convert $file to to BAM"
		name=`basename $file .bwa.sam`
		samtools view -S -b $file > bam_files/$name.bam
	done
fi

#Sort BAM for SNP calling
if [[ $start_step -le 2 ]]
then
	for file in bam_files/*.bam
	do
		echo "Sort $file"
		name=`basename $file .bam`
		readid=$name
		samtools sort -o sorted_bam_files/$readid.bam $file
	done
fi


hostname
