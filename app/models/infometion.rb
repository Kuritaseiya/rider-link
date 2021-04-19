class Infometion < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :year
  belongs_to :moon
  belongs_to :day
  
  with_options presence: true do
    validates :title
    validates :text
    validates :year_id
    validates :moon_id
    validates :day_id
  end 

  with_options numericality: { other_than: 1 } do
    validates :year_id
    validates :moon_id
    validates :day_id
  end
end
