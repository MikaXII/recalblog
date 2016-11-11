FROM ruby:2.3.1
MAINTAINER MikaXII

ENV JEKYLL_ENV=production


RUN mkdir -p /usr/src/app

RUN git clone https://github.com/MikaXII/recalblog.git /usr/src/app

WORKDIR /usr/src/app

RUN bundle install

CMD ["jekyll","--watch"]
