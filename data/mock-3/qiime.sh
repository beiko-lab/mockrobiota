#!/bin/bash

# Fetch the data
awk '{if ($0~/.fastq.gz/) {system("wget " $2)}}' dataset-metadata.tsv

# Isolate it into a folder
mkdir import_to_qiime

mv *.fastq.gz import_to_qiime

cd import_to_qiime

mv mock-forward-read.fastq.gz forward.fastq.gz
mv mock-reverse-read.fastq.gz reverse.fastq.gz
mv mock-index-read.fastq.gz barcodes.fastq.gz

cd ..

# Import the data
qiime tools import --type EMPPairedEndSequences --input-path import_to_qiime/ --output-path reads.qza

qiime demux emp-paired --m-barcodes-file sample-metadata.tsv --m-barcodes-column BarcodeSequence --i-seqs reads.qza --o-per-sample-sequences demux_reads --o-error-correction-details demux_stats --p-rev-comp-mapping-barcodes --p-rev-comp-barcodes

qiime demux summarize --p-n 10000 --i-data demux_reads.qza --o-visualization qual_viz

#qiime deblur denoise-16S --i-demultiplexed-seqs demux_reads.qza --o-representative-sequences rep_seq --o-stats stats --o-table deblur_table --p-trim-length 19 --p-left-trim-len 20
#Using DADA2 to analyze quality scores of 10 random samples

#Denoising with DADA2. Using quality score visualizations, you can choose trunc-len-f and trunc-len-r (note: sequences < trunc-len in length are discarded!)
#qiime dada2 denoise-paired --i-demultiplexed-seqs demux_reads.qza --o-table dada2_table --o-representative-sequences representative_sequences --p-trunc-len-r 110 --p-trunc-len-f 110 --p-max-ee-r 20 --p-max-ee-f 20 --p-chimera-method none --p-trunc-q 0 --p-n-threads 4 --o-denoising-stats denoise_stats.qza --verbose

#qiime feature-classifier classify-sklearn --i-classifier ../gg-13-8-99-nb-classifier.qza --i-reads representative_sequences.qza --o-classification taxonomy

#This visualization shows us the sequences/sample spread
#qiime feature-table summarize --i-table dada2_table.qza --o-visualization dada2_table_summary

#Taxa bar plots
#qiime taxa barplot --i-table dada2_table.qza --i-taxonomy taxonomy.qza --m-metadata-file sample-metadata.tsv --o-visualization dada2_taxa-bar-plots
