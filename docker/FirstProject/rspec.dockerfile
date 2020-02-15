FROM ruby:alpine
LABEL Oliver Bennett <oliver.bennett@unimelb.edu.au>

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver
ENTRYPOINT [ "rspec" ]
