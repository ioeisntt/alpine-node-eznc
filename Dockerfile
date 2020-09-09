FROM mhart/alpine-node:14.9.0

#
# Preparation: install/setup dependant packages/files/config
#
WORKDIR /
# get the latest list of available packages
RUN apk update --update-cache
# get the latest security upgrades and bugfixes available for all the packages of a running system
RUN apk upgrade
# add required package 
RUN apk add bash \
    gcc \
    git \
    libc-dev \
    libffi-dev \ 
    libxml2-dev \
    libxslt-dev \
    make \
    openssh \
    openssh-client \
    openssl-dev \
    python3 \
    python-dev \
    python3-dev \
    zlib-dev && \
    rm -rf /var/cache/apk/*

  
# 
RUN pip3 install --upgrade pip

# Install Pyez
RUN pip3 install junos-eznc
