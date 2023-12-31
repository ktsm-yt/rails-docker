FROM ruby:3.2.2
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    postgresql-client\
    vim \
#無駄なインストールを省き、aptインストール時のキャッシュを削除してくれる。
    && apt-get clean \
    && rm -rf /var/lib/apt/list/*

WORKDIR /rails-docker

COPY Gemfile Gemfile.lock ./ 
RUN bundle install

#既存railsプロジェクトをコンテナ内にコピー
COPY . /rails-docker

# entrypoint.shをコピーし、実行権限を与える
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["./bin/rails", "server"]