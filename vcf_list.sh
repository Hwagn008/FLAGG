#!/bin/bash
for d in ../Lee_Aedes/*/; do
	echo "${d%?}	$d${d%?}.g.vcf.gz" >> VCF_List.txt
done

for d in ../Aae_Completed/*/; do
	echo "${d%?}	$d${d%?}.g.vcf.gz" >> VCF_List.txt
done
