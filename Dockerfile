FROM lazysoul/ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update
RUN apt-get install -y nodejs
RUN npm install -g http-server

# Add additional tools
RUN apt-get install -y links git htop

CMD http-server .
