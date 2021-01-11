class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans

  with_options presence: true do
    validates :nickname
    validates :email
    validates :password
    validates :age
    validates :mybike
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

end
