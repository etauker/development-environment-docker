FROM ubuntu:rolling
ARG MESSAGE='Default message'
RUN echo "Hello from Ubuntu" 
RUN echo 'echo "Message form outside: $MESSAGE"' > ~/message 
RUN bash ~/message
