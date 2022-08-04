FROM ruby:2.5
LABEL maintainer="Vitor Hideki Yamamoto Tiba <vitor.hitiba@gmail.com>"

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -E -
RUN apt-get update -qq && apt-get install -y nodejs
WORKDIR /simple-suggestion-box
COPY ./Gemfile /simple-suggestion-box/Gemfile
COPY ./Gemfile.lock /simple-suggestion-box/Gemfile.lock
RUN bundle install
COPY . /simple-suggestion-box

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-p", "3000"]
