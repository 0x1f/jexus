FROM ubuntu




RUN apt-get update -y  && apt-get  install -y wget libicu-dev  curl git sudo

RUN useradd -ms /bin/bash jexus

RUN usermod -aG sudo jexus

RUN echo "jexus ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jexus

RUN curl https://jexus.org/release/x64/install.sh|sudo sh
