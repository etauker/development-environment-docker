# TODO: Change to use a different user

FROM ubuntu:latest
ARG MESSAGE='Default message'
#ARG NVM_DIR="/root/.nvm"
#CMD ["/bin/bash", "-c"]

# Install basic tools
RUN apt-get update
RUN apt-get -y install curl chromium-browser git

# Import the same RSA key as host
RUN mkdir -p /root/.ssh
RUN ls /root/.ssh
COPY temp/id_rsa.pub /root/.ssh/id_rsa.pub

#
#RUN git clone git@github.com:etauker/config-atom.git

# Copy and source dotfiles
RUN rm /root/.bashrc
COPY dotfiles/* /root/

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
RUN /bin/bash -c "source /root/.bash_nvm"

RUN echo "Hello from Ubuntu"
RUN echo 'echo "Message form outside: $MESSAGE"' > ~/message
RUN bash ~/message
RUN chromium-browser &>/dev/null &
