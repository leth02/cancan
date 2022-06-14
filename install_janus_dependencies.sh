#!/usr/bin/env bash

# This script install required  dependencies for Janus
# Optional dependencie can be installed by uncommenting corresponding sections

aptitude install libmicrohttpd-dev \
	libjansson-dev \
	libssl-dev \
	libsrtp2-dev \
	libglib2.0-dev \
	libconfig-dev \
	pkg-config \
	libtool \
	automake \


