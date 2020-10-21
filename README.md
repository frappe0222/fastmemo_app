# README

FastMemo APP
 
* "FastMemo APP"とは？
  直感的なメモを記載して、第二の脳としてアイデアのバックアップを瞬時に確認できる。


* "FastMemo APP"の制作背景(意図)
  スマートフォンの標準メモアプリにおいて、フォルダ分けや保存先などメモする前に設定する事柄が多くなりがちであり
  ”すぐにメモ”をするという用途に絞ったメモアプリケーションの制作したいと考えた。

* "FastMemo APP"のセールスポイントや差別化
  WEBアプリケーション、登録や起動などのタイムラグがなく無料で活用できる。
  ”メモがすぐできる”

# Features 課題・追加実装予定

* １ページでリスト確認とメモが可能な２カラムデザインに編集。
* 書式機能の選択、リマインダーの設定などメモ昨日の自由度を向上。
 
# Requirement 使用技術(開発環境)
 
* ruby '2.6.5' フレームワーク Ruby on Rails
* My SQL
* HTML/CSS

# Demo

![fast_memo](https://user-images.githubusercontent.com/68538672/96215789-df9e6c00-0fb9-11eb-84ea-8d642cdd340d.gif)
 
# Note 工夫したポイント

* メモの削除 編集 空入力におけるエラーメッセージの表示を、mixinを活用しコードの省略に努めた
* メモリストをsccsによりスクロール可能にし、メモした内容をすぐ確認できるようにした点
 
# Author 作成情報

* 作成者 平野颯太
* E-mail frappeccino@gmail.com

# 本番環境 URL

* https://fastmemo-app.herokuapp.com/


## DB設計

# memos テーブル

| Column               | Type         | Options                             |
| -------------------- | ------------ | ----------------------------------- |
| content              | text         | null: false                         |
| daytime              | datetime     |                                     |