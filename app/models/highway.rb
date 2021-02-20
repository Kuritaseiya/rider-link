class Highway < ActiveHash::Base
  include ActiveHash::Associations
  has_many :plans

  self.data = [
    {id: 1, name:'使わない'},
    {id: 2, name:'使う'},
  ]
end
