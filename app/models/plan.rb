class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :user
  has_many :messages, dependent: :destroy

  with_options presence: true do
    validates :when
    validates :prefecture_id
    validates :conditions
  end

  validates :prefecture_id, numericality: { other_than: 1 }
end
