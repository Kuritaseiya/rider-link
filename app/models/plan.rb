class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :year
  belongs_to :moon
  belongs_to :day
  belongs_to :user
  has_many :messages, dependent: :destroy

  with_options presence: true do
    validates :year_id
    validates :moon_id
    validates :day_id
    validates :prefecture_id
    validates :conditions
  end

  with_options numericality: { other_than: 1 } do
    validates :prefecture_id
    validates :year_id
    validates :moon_id
    validates :day_id
  end
  
end
