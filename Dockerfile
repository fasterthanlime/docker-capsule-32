FROM 32bit/debian:latest

RUN uname -a && apt-get update --quiet && apt-get install --quiet --yes netselect-apt
RUN cd /etc/apt && netselect-apt && apt-get update
RUN apt-get dist-upgrade --quiet --yes

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install --quiet --yes nodejs

RUN apt-get install --quiet --yes \
    git \
    build-essential cmake autoconf automake libtool pkg-config
    python perl \
    bzip2 zlib2g-dev \
    yasm nasm \
    libgl1 libgl1-mesa-dev

