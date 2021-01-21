### RIDER-LINK

# このアプリでできること

* ユーザー新規登録、ログイン、ログアウト、詳細情報閲覧
* ツーリングプラン企画作成、企画削除、詳細情報閲覧(ユーザー登録者のみ)
* メッセージコメント機能(ユーザー登録者のみ)

# URL
[https://rider-link.herokuapp.com/]

# テスト用アカウント

* ユーザー１
* email = test@test
* password = test12

* ユーザー２
* email = popopo@popopo
* password = popo12

# アプリの利用方法

* 各機能について
* ユーザー登録をしていない場合
* 上部のユーザー認証欄にて新規登録かログインボタンでユーザー登録ができます。
* ツーリングプランを閲覧することはできますが、コメントをすることはできません。

* ユーザー登録後の場合
* ユーザー認証欄の自身のnickname部をクリック(タップ)すると、自身のプロフィールが閲覧できます。
* また、ツーリングを企画することができます。企画して正常に作成出来た企画は「ツーリングプラン」一覧の下に表示されます。

* ツーリングを閲覧する場合・作成された企画の開催都道府県をクリックするとツーリングの詳細画面へと移行します。
* 詳細画面では、ログインしているユーザーのみにコメント機能が使用できます。
* また、ツーリング企画者のみツーリング企画を削除することができます。

# 目指した課題解決

* どのような人
* 主に学生や若年層向け

* どのような課題解決
* 埼玉県の高校では2019年４月に、バイクに乗らない、バイクを買わない、バイクの免許を取らないという「３ない運動」が廃止され、高校生でも気軽にバイクを購入したり免許を取得できるようになった。しかし、高校生活などでしょっちゅう集会などに顔を出せるわけではないので、このようなアプリがあれば気軽に開いた時間でも自分の空いているスケジュールのツーリングをさがしだせる上に、遠く離れたユーザーとも知り合えてより多くのコミュニケーションを行うことができると考えた。

# 要件定義

* ユーザーを識別し、自分の地域の人と繋がりたい。-> ユーザー登録機能

* 実際にツーリングを企画し、たくさんのユーザーとツーリングを行いたい。-> ツーリングプラン作成機能

* ツーリングを企画したが、条件を間違えたり、または開催後の企画を削除したい。 -> ツーリングプラン削除機能

* ツーリング企画後、条件に合うユーザーでやりとりを行いたい。 -> コメント投稿機能

# 機能説明
* ユーザー新規登録機能
* [https://gyazo.com/bc127d07002db7695af4f5c6b8bb4cf9]

* ツーリングプラン企画
* [https://gyazo.com/073930c0d9eed576a7148ae559283606]

* コメント機能(ただし、コメント者のnicknameが非同期で表示されないので読み込みをする必要がある)
* [https://gyazo.com/f84a64468d97554690d80d1d63098291]

## データベース設計

# USERS

|nickname|string|null: false|

|email|string|null: false|

|password|string|null: false|

|age|string|null: false|

|mybike|string|null: false|

|gender|integer|null:false|

|prefectures|integer|null: false|

has_many :plans

has_many :messages

# PLANS

|year|integer|null: false|

|moon|integer|null: false|

|day|integer|null: false|

|Prefectures|integer|null: false|

|conditions|text|null: false|

belongs_to :user

has_many :messages

# MESSAGES

|text|text|null: false|

belongs_to :plan

belongs_to :user








