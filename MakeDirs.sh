#!/bin/bash

for f in *_1.fastq.gz; do
    TRIM=${f%???????????}
    mkdir ${TRIM:52:11} # DONE
    cp ${TRIM}_1.fastq.gz ${TRIM:52:11}
    cp ${TRIM}_2.fastq.gz ${TRIM:52:11}
    cp ${TRIM}.fastq.gz ${TRIM:52:11}
done