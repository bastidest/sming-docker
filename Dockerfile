FROM debian:buster

RUN apt-get update && apt-get install -y make autoconf automake libtool libtool-bin gcc g++ gperf \
   flex bison texinfo gawk ncurses-dev libexpat1-dev python sed python-serial \
   python-dev srecord bc git help2man unzip bzip2

COPY bash-version.patch /opt/
RUN useradd -ms /bin/bash alice && chown -R alice /opt && apt-get install -y wget
RUN usermod -aG dialout alice
WORKDIR /opt
USER alice
RUN git clone --recursive https://github.com/pfalcon/esp-open-sdk.git\
        && patch ./esp-open-sdk/crosstool-NG/configure.ac bash-version.patch\
        && cd esp-open-sdk\
        && make STANDALONE=y

RUN git clone https://github.com/SmingHub/Sming.git

COPY export-includes.sh /opt/

ENV SMING_HOME=/opt/Sming/Sming
ENV ESP_HOME=/opt/esp-open-sdk
