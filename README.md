# アプリケーション名
Nature and Buildings
# アプリケーション概要
美しい風景をユーザー同士で共有し、旅行や散歩のきっかけを作る
# URL
https://nature-and-buildings.onrender.com/
# テスト用アカウント
・Basic認証パスワード : 2222  
・Basic認証ID : admin
# 利用方法
# 写真投稿
1.トップページヘッダーからヘッダーからユーザー新規登録を行う  
2.投稿するボタンから内容を入力し投稿する  
# 写真検索
フッターの入力フォームにキーワードを入れると検索一覧が表示される
# 写真詳細
投稿画像をクリックするとGoogle Mapでの地図上の表記がされる
# アプリケーションを作成した背景
土地勘のない場所に行く時、住所から地図を検索することがほとんどでした。いっそのこと、同時に表示されるものがあれば便利だと思い、なおかつ範囲を広げればよりたくさんの人に使ってもらえると思い作成しました。
# 洗い出した要件
https://docs.google.com/spreadsheets/d/1KdhTZFTyVnn19WxcagjA_o6lqeNrBZ3IOhOeBZd5J_Q/edit#gid=982722306
# 実装した機能についての画像や画像やGIFおよびおよびその説明
投稿する際、住所を記載していただくと、自動で緯度・経度を取得しGoogle Mapが詳細画面に表示されマッピングされます。  
[![Image from Gyazo](https://i.gyazo.com/2f990c59d8bf87c81aa582acdd63939e.gif)](https://gyazo.com/2f990c59d8bf87c81aa582acdd63939e)
# 実装予定の機能
現在、画像を複数投稿する機能機能を実装中。  
今後はransackを使ったさまざまな検索機能を実装予定。。
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/f3f1e3791a5b1a14b8b573aee4f01aea.png)](https://gyazo.com/f3f1e3791a5b1a14b8b573aee4f01aea)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/0054a843337f501a1ce724da1cb1346c.png)](https://gyazo.com/0054a843337f501a1ce724da1cb1346c)
# 開発環境
・フロントエンドフロントエンド  
・バックエンド  
・インフラ  
・テスト  
・テキストエディタ  
・タスク管理
# ローカルでの動作動作方法
以下のコマンドを順に実行  

git clone https://github.com/masakazu-fujimoto/Nature-and-Buildings  
cd Nature-and-Buildings  
bundle install   
yarn install
# 工夫したポイント
Google Mapをアプリ上で表示することを工夫しました。  
gem 'geocoder'を使用することで、住所から緯度と経度を変換することができ、投稿者側の負担を減らせることができました。




  