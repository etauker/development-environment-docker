FROM alpine:latest 
ARG MESSAGE='Default message' 
RUN apk add bash 
RUN echo "Hello from alpine" 
RUN echo 'echo "Message form outside: $MESSAGE"' > ~/message 
RUN bash ~/message
