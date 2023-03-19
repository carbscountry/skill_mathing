# Job Recommendation Based on Extracted Skill Embeddingsの実装
## kaggle APIキーの発行
### 目的
kaggleのデータセットを使うためkaggle apiを発行する
### 発行方法
- [このリンク](https://www.kaggle.com/account/login?phase=startRegisterTab&returnUrl=%2F)をクリックしてアカウント登録
- その後ログインし、右上の自分のアイコンをクリックし、Accountをクリック
- APIという項目があるのでCreate New API Tokenを押し、kaggle.jsonをダウンロード
- ダウンロードされるのでまずは~/.kaggleフォルダを作成してそこにkaggle.jsonを格納
```
$ mkdir ~/.kaggle
$ mv ~/Downloads/kaggle.json ~/.kaggle
$ chmod 600 ~/.kaggle/kaggle.json
```
- ワークフォルダにkaggle.jsonをコピーする
```
$ cp ~/.kaggle/kaggle.json ./
```

## 起動方法


#### 0. 上の階層の docker-compose より、database コンテナを立ち上げる


#### 1. 下記コマンドでビルドとコンテナ起動を行う
```
$ docker-compose up -d app
```

#### 2. コンテナにアクセスし、ライブラリをインストール
```
$ docker-compose exec -it app /bin/bash

root@aa1519d1a400:/workspace# poetry lock
root@aa1519d1a400:/workspace# poetry install
```

#### 3. jupyter を起動
```
root@aa1519d1a400:/workspace# nbdime extensions --enable
root@aa1519d1a400:/workspace# chmod +x script.sh
root@aa1519d1a400:/workspace# ./script.sh
root@aa1519d1a400:/workspace# jupyter lab --allow-root --no-browser --NotebookApp.token='' --port 8888 --ip=0.0.0.0
```

#### 4. jupyter を開く
[http://localhost:8080/](http://localhost:8080/)

