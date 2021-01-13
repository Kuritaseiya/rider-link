class Gender < ActiveHash::Base
  include ActiveHash::Associations
  has_many :users

  self.data = [
    {id: 1, name:'--'},
    {id: 2, name:'男性'},
    {id: 3, name:'女性'},
  ]

end
