FROM ruby:3.0.1

LABEL maintainer="teefan82@gmail.com"

RUN apt-get update
RUN apt-get install -y curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y gcc g++ make
RUN apt-get install -y nodejs

RUN npm install -g yarn

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY yarn.lock /usr/src/app/
WORKDIR /usr/src/app
RUN yarn install

COPY . /usr/src/app/

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
