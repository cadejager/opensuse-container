# syntax=docker/dockerfile:1

FROM --platform=linux/amd64 registry.suse.com/bci/bci-base:15.5
#FROM --platform=linux/amd64 docker.io/opensuse/leap:15.5
#FROM registry.access.redhat.com/ubi8/ubi-minimal@sha256:8bedbe742f140108897fb3532068e8316900d9814f399d676ac78b46e740e34e

# set user to root
USER root

RUN zypper in -y gcc

## Basic utilites
RUN zypper in -y gawk lua-lmod
# install spack dependicies
#RUN zypper in -y python gcc gcc-c++ patch tar gzip unzip bzip2 xz zstd file lsb-release gnupg git subversion mercurial python-devel
# Stuff for building
#RUN zypper in -y automake cmake make 

CMD while sleep 60; do echo "up"; done
