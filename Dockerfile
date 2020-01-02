FROM lazysoul/ubuntu:latest

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN yarn install -g http-server

# Add additional tools
RUN apt-get install -y links git htop

CMD http-server .
