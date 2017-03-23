
# Set the base image to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER Alexander Goncearenco <alexander.goncearenco@gmail.com>

# Setup packages
USER root
# RUN apt-get -y -m update && apt-get -y -m upgrade && apt-get install -y wget unzip zip libgsl-dev libgsl2
RUN apt-get -y -m update && apt-get install -y wget unzip zip libgsl-dev libgsl2 bzip2 build-essential git
# gsl-bin libgsl0-dbg libgsl0-dev libgsl0ldbl

# switch back to the ubuntu user so this tool (and the files written) are not owned by root
RUN groupadd -r -g 1000 ubuntu && useradd -r -g ubuntu -u 1000 ubuntu

apt-get -y -m update && apt-get -y upgrade
apt-get -y clean
apt-get -y autoclean

USER ubuntu

git clone https://github.com/NCBI-Hackathons/Epigenomics_CWL.git

CMD ["/bin/bash"]
