# README

## 新卒エンジア テスト研修で使用するリポジトリ

このリポジトリを cloneして環境を構築してください。

### 環境構築
```
# 以下、作業ディレクトリで
git clone  git@github.com:sun-asterisk/rspec_training.git

cd rspec_training

# 以下、docker compose v2 を使用している場合、
# docker compose v1 を使用している場合は docker-compose でコマンドを置き換えてください
docker compose run --rm app bundle install
docker compose run --rm app rails db:prepare
docker compose up app

# http://localhost:3000 にアクセスして Railsのデフォルトのページが表示されることを確認
```

### rspec実行
```
docker compose run --rm app rspec
```

### system spec を実行
```
# VNCを起動
open vnc://localhost:5900 

# パスワードを聞かれたら secret を入力

# system spec を実行
docker compose run --rm app rspec spec/system/books_spec.rb
```
