
FROM quay.io/ncbi_hackathons/linux_base

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

USER ubuntu

git clone https://github.com/NCBI-Hackathons/Epigenomics_CWL.git

Miniconda2-latest-Linux-x86_64.sh
pip install cwltool
pip install cwlref-run

conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels bioconda
conda update
conda install abyss
conda install sra-tools   #### SRA TOOLKIT no longer needed
conda install cutadapt
conda install perl-bioperl

conda install r-pheatmap r-optparse r-data.table
conda install bioconductor-genomeinfodb bioconductor-rtracklayer

wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/magicblast/LATEST//ncbi-magicblast-1.2.0-x64-linux.tar.gz
tar zxvf ncbi-magicblast-1.2.0-x64-linux.tar.gz
cp ncbi-magicblast-1.2.0/bin/magicblast ~/bin/
cp ncbi-magicblast-1.2.0/bin/makeblastdb ~/bin/

wget https://raw.githubusercontent.com/JinfengChen/Scripts/master/Shell/bedGraph2bigwig.sh
/home/ubuntu/bin
chmod +x bedGraph2bigwig.sh

source("https://bioconductor.org/biocLite.R")
biocLite("LOLA")

source("https://bioconductor.org/biocLite.R")
biocLite("rGREAT")

RUN conda clean -a

CMD ["/bin/bash"]
