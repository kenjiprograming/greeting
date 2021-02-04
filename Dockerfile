FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim

RUN mkdir /greeting

WORKDIR /greeting

ADD Gemfile /greeting/Gemfile
ADD Gemfile.lock /greeting/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /greeting

RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids