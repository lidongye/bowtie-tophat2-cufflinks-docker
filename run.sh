#!/bin/bash

if [ ! -z "$1" ] && [ $1 = "china" ];then
	wget sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.9/bowtie2-2.2.9-linux-x86_64.zip -P src/
	wget http://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.1.Linux_x86_64.tar.gz -P src/
	wget http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz -P src/
	ln -s Dockerfile-china Dockerfile
else
ln -s Dockerfile-centos Dockerfile
fi
docker build -t tophat:v1.0 .
rm -f Dockerfile
