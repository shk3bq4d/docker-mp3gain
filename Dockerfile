FROM ubuntu:18.04

RUN apt update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:flexiondotorg/audio
RUN apt update
RUN apt install -y mp3gain vorbisgain
RUN apt-get remove -y software-properties-common
RUN apt-get autoremove -y
