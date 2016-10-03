FROM nsaitonmiri/docker-ubuntu-base
MAINTAINER Naoki Saito <saito.naoki@nmiri.city.nagoya.jp>
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

CMD su - $user
