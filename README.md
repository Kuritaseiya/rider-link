# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# USERS

|nickname|string|null: false|

|email|string|null: false|

|password|string|null: false|

|age|string|null: false|

has_many :plans

# PLANS

|Prefectures|integer|null: false|

|when|string|null: false|

|conditions|text|null: false|

belongs_to :user






