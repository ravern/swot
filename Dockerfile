FROM ruby:2.5.3-alpine

ENV PORT=80
ENV PRODUCTION=1

WORKDIR /app

COPY . .

RUN bundle install

EXPOSE $PORT

CMD [ "ruby", "app.rb" ]
