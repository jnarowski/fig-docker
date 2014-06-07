FROM jnarowski/ruby

RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev openssl

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
RUN bundle install
ADD . /myapp