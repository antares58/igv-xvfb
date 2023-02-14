FROM ubuntu:latest
# docker build -t igv-xvfb:latest .

RUN apt-get update 
RUN apt-get install -yq \
	wget \
	unzip \
	bash \
	xvfb \
	openjdk-11-jdk \
	fontconfig \
	git

WORKDIR /igv
ADD https://api.github.com/repos/antares58/igv-xvfb/git/refs/heads/main version.json

RUN git clone https://github.com/antares58/igv-xvfb.git
#RUN chmod +x /igv/make_igv_snapshots.sh 

RUN wget https://data.broadinstitute.org/igv/projects/downloads/2.16/IGV_Linux_2.16.0_WithJava.zip
RUN unzip IGV_Linux_2.16.0_WithJava.zip

WORKDIR /igv/IGV_Linux_2.16.0
CMD ["/bin/bash"]
