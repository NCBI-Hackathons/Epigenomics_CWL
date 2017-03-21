#############################################################
# Dockerfile tools for single-cell methylation pipeline
#############################################################

# Set the base image to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER Alexander Goncearenco <alexander.goncearenco@gmail.com>

# Setup packages
USER root
RUN apt-get -m update && apt-get -m upgrade && apt-get install -y wget unzip openjdk-7-jre zip libgsl-dev libgsl2
# gsl-bin libgsl0-dbg libgsl0-dev libgsl0ldbl

# switch back to the ubuntu user so this tool (and the files written) are not owned by root
RUN groupadd -r -g 1000 ubuntu && useradd -r -g ubuntu -u 1000 ubuntu


# get the BamStats tool and install it in /usr/local/bin
RUN wget -q http://downloads.sourceforge.net/project/bamstats/BAMStats-1.25.zip
RUN unzip BAMStats-1.25.zip && \
    rm BAMStats-1.25.zip && \
    mv BAMStats-1.25 /opt/
COPY bin/bamstats /usr/local/bin/
RUN chmod a+x /usr/local/bin/bamstats

# Methpipe
RUN wget -q http://smithlabresearch.org/downloads/methpipe-3.4.3.tar.bz2
RUN tar xvjf methpipe-3.4.3.tar.bz2
RUN cd methpipe-3.4.3
RUN export CPATH=/usr/include/gsl
RUN export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/
RUN make all && make install
RUN mkdir /home/ubuntu/bin
RUN mv bin/* /home/ubuntu/bin/

USER ubuntu

# by default /bin/bash is executed
CMD ["/bin/bash"]
