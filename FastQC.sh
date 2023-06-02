#!/bin/bash

#SBATCH --qos pq_mdegenna
#SBATCH --account iacc_mdegenna
#SBATCH --partition investor

# Node location
#SBATCH -p IB_44C_512G

# Number of nodes
#SBATCH -N 1

# Number of tasks
#SBATCH -n 16

#SBATCH --output=log


##########################################################
# Setup envrionmental variable. 
##########################################################

    . $MODULESHOME/../global/profile.modules
    module load fastqc-0.11.7-gcc-4.8.5-72rtvom
    export OMP_NUM_THREADS=$SLURM_CPUS_ON_NODE

##########################################################
##########################################################

#for d in */; do
#    if [ "$d" == "FastQ_Files" ] ; then
#        continue;
#    fi
#    cd $d
#    echo $d
#    rm *.fastq.gz
#    cd ..
#done



fastqc -o fastqcOut/ *.fq.gz
