FROM ruby:2.7.0

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE = DontWarn

# Rails6からJSのコンパイラがwebpackerになったからそれに必要なyarnをインストール
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn \
    && mkdir /kokinoue

WORKDIR /kokinoue

ADD Gemfile /kokinoue/Gemfile
ADD Gemfile.lock /kokinoue/Gemfile.lock
RUN bundle install

COPY . /kokinoue

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
