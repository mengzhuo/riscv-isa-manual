#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
apt-get update -y

apt-get install -y --no-install-recommends \
        bison \
        build-essential \
        python3-pip \
        cmake \
        curl \
        flex \
        fonts-lyx \
        git \
        ditaa \
        pandoc \
        graphviz \
        default-jre \
        libcairo2-dev \
        libffi-dev \
        libgdk-pixbuf2.0-dev \
        libpango1.0-dev \
        libxml2-dev \
        libglib2.0-dev \
        make \
        pkg-config \
        ruby \
        ruby-dev \
        libgif-dev \
        libwebp-dev \
        libzstd-dev \
        ruby-full \
        gem \
        npm \
        texlive-latex-base \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-latex-extra \
        texlive-science \
        python3-sympy \
        python3-yaml \
        python3-jsonschema \
        ruby-bundler

(cd dependencies && bundle install --jobs $(nproc))   

npm install -g wavedrom-cli@2.6.8 bytefield-svg@1.8.0
