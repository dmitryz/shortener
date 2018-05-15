FROM ruby:2.3.1

ENV INSTALL_PATH /usr/src/app

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY . .

RUN bundle install --deployment --without test development

EXPOSE 3000
EXPOSE 3010

ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server"]
