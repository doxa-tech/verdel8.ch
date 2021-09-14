FROM jekyll/jekyll

RUN gem install bundler:1.17.1

WORKDIR /srv/jekyll

COPY Gemfile* ./
RUN bundle install

COPY . .