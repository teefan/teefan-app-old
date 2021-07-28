FROM ruby:3.0.1

LABEL maintainer="teefan82@gmail.com"

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

RUN npm install -g yarn

COPY Gemfile* /var/www/teefan_app/
WORKDIR /var/www/teefan_app
RUN bundle install

COPY package.json* /var/www/teefan_app/
COPY yarn.lock /var/www/teefan_app/
WORKDIR /var/www/teefan_app
RUN yarn install

COPY . /var/www/teefan_app

# CMD ["bin/rails", "s", "-b", "0.0.0.0"]
