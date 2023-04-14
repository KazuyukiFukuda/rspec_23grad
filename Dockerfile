FROM ruby:3.0.2
ENV LANG C.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
  nodejs\
  yarn\
  libpq-dev\
  build-essential && \
  rm --recursive --force /var/lib/apt/lists/*

RUN mkdir /myapp
WORKDIR /myapp

ADD Gemfile .
ADD Gemfile.lock .

# RUN bundle install --jobs=4

COPY . .

EXPOSE 3000
