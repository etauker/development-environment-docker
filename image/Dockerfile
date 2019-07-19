#FROM x11docker/cinnamon

# Copy and source dotfiles
# RUN rm /fakehome/etauker/.bashrc
#COPY dotfiles/* /fakehome/etauker/
#RUN pwd
#RUN ls -la /fakehome/etauker/



# TODO: Change to use a different user

# FROM ubuntu:latest
# ARG MESSAGE='Default message'
# #ARG NVM_DIR="/root/.nvm"
# #CMD ["/bin/bash", "-c"]
#
# # Install basic tools
# RUN apt-get update
# RUN apt-get -y install curl chromium-browser git
#
# # Import the same RSA key as host
# RUN mkdir -p /root/.ssh
# RUN ls /root/.ssh
# COPY temp/id_rsa.pub /root/.ssh/id_rsa.pub
#
# #
# #RUN git clone git@github.com:etauker/config-atom.git
#
# # Copy and source dotfiles
# RUN rm /root/.bashrc
# COPY dotfiles/* /root/
#
# # Install nvm
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# RUN /bin/bash -c "source /root/.bash_nvm"
#
# RUN echo "Hello from Ubuntu"
# RUN echo 'echo "Message form outside: $MESSAGE"' > ~/message
# RUN bash ~/message
# RUN chromium-browser &>/dev/null &


#########################################################################################################

# x11docker/cinnamon
#
# Run cinnamon desktop in docker.
# Use x11docker to run image.
# Get x11docker from github:
#   https://github.com/mviereck/x11docker
#
# Run desktop with:
#   x11docker --desktop --systemd x11docker/cinnamon
#
# Run single application:
#   x11docker x11docker/cinnamon nemo
#
#
# Options:
# Persistent home folder stored on host with   --home
# Shared host folder with                      --sharedir DIR
# Hardware acceleration with option            --gpu
# Clipboard sharing with option                --clipboard
# Sound support with option                    --alsa
# With pulseaudio in image, sound support with --pulseaudio
# Printer support over CUPS with               --printer
# Webcam support with                          --webcam
#
# See x11docker --help for further options.












FROM x11docker/cinnamon
ARG COMMAND
RUN echo "Hello me"

# Copy start script
COPY internal-scripts/start-$COMMAND /usr/local/bin/start
RUN chmod +x /usr/local/bin/start

# Install cli tools
RUN apt-get -y install git nano curl gpg
RUN echo [git] installed: $(git --version)

# Install GUI tools
RUN apt-get -y install dconf-editor

# Install vscode
COPY source-lists/vscode.list /etc/apt/sources.list.d/vscode.list
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
RUN mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
RUN apt-get -y update
RUN apt-get -y install code

# Setup files and folders
RUN echo "Hello"
RUN mkdir -p /root/projects
COPY dotfiles/* /root/

# Configure vscode
RUN mkdir -p /home/vscode
COPY vscode-settings/User/settings.json /home/vscode/User/settings.json

# Start files
ENTRYPOINT ["/usr/local/bin/start"]
CMD ["cinnamon-session"]
