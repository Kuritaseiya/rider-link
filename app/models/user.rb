class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans
  belongs_to :gender
  belongs_to :prefecture

  with_options presence: true do
    validates :nickname
    validates :email
    validates :password
    validates :age
    validates :mybike
    validates :gender_id
    validates :prefecture_id
  end

  with_options length: {minimum: 6} do
    validates :password
    validates :nickname
  end


  validates :email,    uniqueness: { case_sensitive: false }
  validates :email,    format: { with:/@/}
  validates :password, length: {minimum: 6}
  validates :password, format: { with: /\A[a-z A-Z 0-9]+\z/ }
  validates :age,      format: { with: /\A[0-9]+\z/ }
  validates :gender_id,   numericality: { other_than: 1 }
  validates :prefecture_id, numericality: { other_than: 1 }

end
