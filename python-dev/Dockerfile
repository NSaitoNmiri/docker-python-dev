FROM ubuntu:xenial
MAINTAINER Naoki Saito <saito.naoki@nmiri.city.nagoya.jp>
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install sudo git wget bzip2 vim -y
ARG USER
###
### create user
###
ENV user=${USER:-"developer"}
RUN echo $user
RUN adduser --gecos ",,," --disabled-password $user \
    && passwd -d $user \
    && usermod -G sudo $user \
    && echo $user ALL=NOPASSWD: ALL > /etc/sudoers.d/$user
###
### run custom scripts
###
USER root
WORKDIR /tmp
ADD ./scripts ./
RUN chmod +x setup_root.sh setup_user.sh \
    && chown $user:$user setup_user.sh \
    && ./setup_root.sh
USER $user
WORKDIR /home/$user
RUN /tmp/setup_user.sh
