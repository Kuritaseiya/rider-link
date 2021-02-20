class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :year
  belongs_to :moon
  belongs_to :day
  belongs_to :power
  belongs_to :maker
  belongs_to :highway
  belongs_to :age_min
  belongs_to :age_max
  belongs_to :user

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
