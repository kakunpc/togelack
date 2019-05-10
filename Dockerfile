FROM ruby:2.4.1
WORKDIR /user/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
RUN bundle exec rake assets:precompile
CMD bundle exec puma -C config/puma.rb