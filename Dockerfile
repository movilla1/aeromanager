FROM ruby:2.7.4-slim
RUN gem install bundler -v 2.2.27

RUN bundle config --global frozen 1
WORKDIR /usr/src/app

RUN apt-get update -y
RUN apt-get install -y git build-essential libpq-dev nodejs

COPY Gemfile Gemfile.lock ./
COPY . /usr/src/app/
RUN rm -f engines
COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
RUN bundle install

EXPOSE 3002
ENTRYPOINT [ "entrypoint.sh" ]
CMD ["rails", "server", "-p", "8080", "-b", "0.0.0.0"]
