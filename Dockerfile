FROM ruby:2.6.3-slim

WORKDIR usr/src/repo_searcher

EXPOSE 9292

RUN apt-get update
RUN apt-get install -y build-essential
RUN gem install bundler

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["rackup", "--host", "0.0.0.0"]
