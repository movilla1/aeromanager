FROM ruby:2.7.4-slim
RUN gem install bundler -v 2.2.17

RUN bundle config --global frozen 1
WORKDIR /usr/src/app

RUN apt-get update -y
RUN apt-get install -y git build-essential libpq-dev nodejs

COPY aeromanager_admin/Gemfile aeromanager_admin/Gemfile.lock ./
COPY aeromanager_admin/ /usr/src/app/
RUN rm -f engines
RUN mkdir -p engines/aeromanager_models
COPY backend/engines/aeromanager_models ./engines/aeromanager_models
COPY backend/entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
RUN bundle install

EXPOSE 3002
ENTRYPOINT [ "entrypoint.sh" ]
CMD ["rails", "server", "-p", "3002", "-b", "0.0.0.0"]
