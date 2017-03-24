#############################################################
# Dockerfile tools for single-cell methylation pipeline
#############################################################

# Set the base image to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER Alexander Goncearenco <alexander.goncearenco@gmail.com>

# Setup packages
USER root
# RUN apt-get -y -m update && apt-get -y -m upgrade && apt-get install -y wget unzip zip libgsl-dev libgsl2
RUN apt-get -y -m update && apt-get install -y wget unzip zip libgsl-dev libgsl2 bzip2 build-essential python-pip git
# gsl-bin libgsl0-dbg libgsl0-dev libgsl0ldbl

# switch back to the ubuntu user so this tool (and the files written) are not owned by root
RUN groupadd -r -g 1000 ubuntu && useradd -r -g ubuntu -u 1000 ubuntu

## get the BamStats tool and install it in /usr/local/bin
# RUN wget -q http://downloads.sourceforge.net/project/bamstats/BAMStats-1.25.zip
# RUN unzip BAMStats-1.25.zip && \
#    rm BAMStats-1.25.zip && \
#    mv BAMStats-1.25 /opt/
# COPY bin/bamstats /usr/local/bin/
# RUN chmod a+x /usr/local/bin/bamstats

# Methpipe
# RUN wget -q http://smithlabresearch.org/downloads/methpipe-3.4.3.tar.bz2
# RUN tar xvjf methpipe-3.4.3.tar.bz2
# RUN cd methpipe-3.4.3
# RUN export CPATH=/usr/include/gsl
# RUN export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/
# RUN make all && make install
# RUN mkdir -p /home/ubuntu/bin
# RUN chown -R ubuntu:ubuntu /home/ubuntu
# RUN mv bin/* /home/ubuntu/bin/

RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | tee -a /etc/apt/sources.list
RUN gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
RUN gpg -a --export E084DAB9 | apt-key add -


# RUN apt-get -y -m update && apt-get install -y r-base r-base-dev

apt-get update && apt-get upgrade
apt-get clean
apt-get autoclean


USER ubuntu


git clone https://github.com/NCBI-Hackathons/Epigenomics_CWL.git


#     1  bash /root/
#     2  bash Miniconda2-latest-Linux-x86_64.sh
#     3  pip install cwltool
#     4  which python
#     5  pip uninstall cwltool
#     6  ls
#     7  . ~/.bashrc
#     8  which python
#     9  pip install cwltool
#    10  conda config --add channels conda-forge
#    11  conda config --add channels defaults
#    12  conda config --add channels r
#    13  conda config --add channels bioconda
#    14  conda update
#    15  conda install abyss
#    16  conda install sra-tools   #### SRA TOOLKIT no longer needed
#    17  conda install cutadapt
#    18  conda install bioperl samtools
#    19  conda install samtools
#    20  conda install bioperl
#    21  conda search bioperl
#    22  conda install perl-bioperl
#    23  history
#    24* pip install cwlref-run
#    25  pwd
#    26  wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/magicblast/LATEST//ncbi-magicblast-1.2.0-x64-linux.tar.gz
#    27  tar zxvf ncbi-magicblast-1.2.0-x64-linux.tar.gz
#    28  mc
#    29  cp ncbi-magicblast-1.2.0/bin/magicblast ~/bin/
#    30  cp ncbi-magicblast-1.2.0/bin/makeblastdb ~/bin/
#    31  conda install cutadapt
#    32  conda install abyss
#    33  history
# $

wget https://raw.githubusercontent.com/JinfengChen/Scripts/master/Shell/bedGraph2bigwig.sh
/home/ubuntu/bin
chmod +x bedGraph2bigwig.sh

conda install r-pheatmap r-optparse r-data.table
conda install bioconductor-genomeinfodb bioconductor-rtracklayer

source("https://bioconductor.org/biocLite.R")
biocLite("LOLA")

source("https://bioconductor.org/biocLite.R")
biocLite("rGREAT")
# do not update packages


RUN conda clean -a


# by default /bin/bash is executed
CMD ["/bin/bash"]



