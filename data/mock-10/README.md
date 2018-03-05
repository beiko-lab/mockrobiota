# mock-10

A mock community composed of 16 fungal strains (12 species) represented in equal abundances in three replicate samples. These are the same community members present in [mock-9](../mock-9/), which is the same mock community samples analyzed on a separate Illumina HiSeq run. This was generated by Dr. Benjamin Wolfe at Harvard University, in 2012.

Previously called dataset F2 in [Bokulich et al. 2015](https://dx.doi.org/10.7287/peerj.preprints.934v2).

# Known Issues / Notes

These barcode reads contain golay barcodes, and the mapping barcodes need to be reverse-complemented to match the reads. Run in qiime-1 using the following command:
``split_libraries_fastq.py -i mock-forward-read.fastq.gz -o split_libraries -m sample-metadata.tsv -b mock-index-read.fastq.gz --rev_comp_mapping_barcodes``

Note that the barcode reads contain fake QUAL scores, as the sequence data were originally delivered in an older format with index reads contained in the header lines without QUAL scores. Forward and reverse reads contain true QUAL scores.

@mdeleeuw reports in [issue-27](https://github.com/caporaso-lab/mockrobiota/issues/27) that:
>the forward reads start 55bp upstream of the ITS sequences in Unite. As a consequence, forward reads fail closed reference picking and are underrepresented in taxonomic assignments for open reference and de novo picking. This is because the standard UNITE database has internal ITS regions extracted; the "developer" version included in the standard UNITE database release 7.1 contains the full ITS reads, which contain these primers and should work with closed-reference OTU picking (though mockrobiota developers have not independently verified this).