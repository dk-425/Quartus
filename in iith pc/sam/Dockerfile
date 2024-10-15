# Use a base image
FROM ubuntu:20.04

# Set environment variables (modify these according to your Quartus version)
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV LM_LICENSE_FILE="28500@192.168.130.25"
ENV MGLS_LICENSE_FILE="1717@192.168.130.25"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install locales apt-utils build-essential net-tools -y
RUN dpkg-reconfigure locales
