# mockrobiota + QIIME2

This is a fork of the [mockrobiota](http://caporaso-lab.github.io/mockrobiota/) repository with additional scripts to download the data and process them with QIIME2.

Goals for this fork are to provide an easy entrypoint into the mockrobiota data with a set of working import commands and clustering parameters.

# Processing Status

| Dataset | import/demux | deblur | dada2 |
|---------|--------|--------|-------|
| mock-1  | :white_check_mark:    |  :white_check_mark:  |  :white_check_mark:  |
| mock-2  |  :heavy_check_mark:   |  :white_check_mark:  |  :heavy_check_mark:  |
| mock-3  |  :heavy_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-4  |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-5  |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-6  |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-7  |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-8  |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-9  |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-10 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-11 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-12 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-13 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-14 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-15 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-16 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-17 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-18 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-19 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-20 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-21 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-22 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-23 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-24 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-25 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-26 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-27 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |
| mock-28 |  :white_check_mark:   |  :white_check_mark:  |  :white_check_mark:  |

# Original mockrobiota README

[![Build Status](https://travis-ci.org/caporaso-lab/mockrobiota.svg?branch=master)](https://travis-ci.org/caporaso-lab/mockrobiota)

A public resource for microbiome bioinformatics benchmarking using artifically constructed (i.e., mock) communities.

[Homepage](http://caporaso-lab.github.io/mockrobiota/)

[Searchable Inventory](./inventory.tsv) of mock communities.

mockrobiota distributes metadata and other materials associated with mock community datasets for public use, as well as links to raw sequencing data that are hosted externally. As raw data are hosted externally, mockrobiota cannot ensure the integrity or quality of raw data. Critical errors associated with any mockrobiota materials or raw data should be [reported here](https://github.com/caporaso-lab/mockrobiota/issues). For minor issues, e.g., formatting quirks associated with raw data, or notes on the usage of a particular dataset, document this information in the ``README.md`` file, which  is located in the [home directory of each dataset](https://github.com/caporaso-lab/mockrobiota/tree/master/data).

## Contributing
We welcome and encourage new submissions to the mockrobiota family! If you have a mock community dataset that you would like to contribute, or wish to make changes/additions to any of the materials contained in mockrobiota, please review our [contributing guidelines](https://github.com/caporaso-lab/mockrobiota/blob/master/CONTRIBUTING.md).

## Citing mockrobiota
If you use any materials contained in mockrobiota, please cite [this article](http://msystems.asm.org/content/1/5/e00062-16):

Bokulich NA, Rideout JR, Mercurio WG, Shiffer A, Wolfe B, Maurice CF, Dutton RJ, Turnbaugh PJ, Knight R, Caporaso JG. 2016. mockrobiota: a Public Resource for Microbiome Bioinformatics Benchmarking. mSystems 1 (5): e00062-16. DOI: 10.1128/mSystems.00062-16.

**Do not forget** to cite the original publication for any mock community dataset that you use (original citation information is contained in the ``dataset-metadata.tsv`` file, located in the [home directory of each dataset](https://github.com/caporaso-lab/mockrobiota/tree/master/data)).
