#!/bin/bash

for d in */; do
    cp GATK_BAM_to_VCF.sub ./$d
    cd $d
    sbatch GATK_BAM_to_VCF.sub
    cd ..
done
