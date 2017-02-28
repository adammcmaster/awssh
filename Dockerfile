FROM ruby:2.4-alpine

RUN apk update
RUN apk add ca-certificates wget
RUN update-ca-certificates
RUN apk add openssh

RUN wget -O - https://github.com/junegunn/fzf-bin/releases/download/0.16.5/fzf-0.16.5-linux_386.tgz | \
        tar -xz -C /usr/local/bin

WORKDIR /usr/local/src

COPY Gemfile ./

RUN bundle update
RUN bundle install

COPY awssh ./
