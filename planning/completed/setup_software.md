# Setup software

## Description
As a developer I would like have all the necessary software installed on a shared AMI server in order to run each stage of the future pipelines

## Notes
 - CWL runner / tools in AMI environment
 - Docker
    - LOLA (Bioc)
    - RGREAT (Bioc)
    - pandoc
    - bedgraph2bigwig (script) - requires input preprocessing
    - Python 3 (anaconda)
    - R/Bioconductor

## ESTIMATE: 5
## PRIORITY: MUST

## Standalone packages to install:

## R packages to install:

GenomeInfoDb, data.table, rtracklayer, pheatmap, optparse

## LOG

Created an UBUNTU (xenial) based Docker container, which installs developement tools and miniconda with bioconda

R packages (except for LOLA and rGREAT) are installed from anaconda, the other two are installed with bioclite()

Python 2.7 environment was required for CWL runner and tools

I also installed in the same container the tools required for VIRUS SRA pipeline

AMI environment was set up to run docker containers

Docker container is been deposited onto https://quay.io/repository/neksa/pipelines

    docker pull quay.io/neksa/pipelines
    docker run -it quay.io/neksa/pipelines /bin/true

