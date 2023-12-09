## アプリ利用方法


ご自身の環境に
```
git clone　URL
```
![こちらのURL](https://github.com/ktsm-yt/rails-docker/assets/99321574/0d48530e-14ef-483e-bdd7-2a652c52ac19)
をコマンド入力して構築する。


```
docker compose build
```
```
docker compose run web rails db:create db:migrate
```
```
docker compose up　-d
```
の順でコマンドを入力した後、

http://0.0.0.0:3000/
へアクセスすることで利用できる。
