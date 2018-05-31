FROM ruby:latest

RUN apt-get update && apt-get -y install nodejs && gem install rails
RUN mkdir -p opt/app

ONBUILD WORKDIR /opt/app
ONBUILD ADD . /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle update && bundle install && rails db:migrate && rails db:seed

# https://github.com/railstutorial/sample_app_rails_4
# https://bitbucket.org/railstutorial/sample_app_4th_ed
#
# docker build -t ft-rails:on-build .
# git clone https://bitbucket.org/railstutorial/sample_app_4th_ed.git sample_app
# cd sample_app
# echo 'FROM ft-rails:on-build\nEXPOSE 3000\nCMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]' > Dockerfile
# docker build -t rails .
# docker run -it --rm -p 3000:3000 rails
# open http://192.168.99.100:3000/
