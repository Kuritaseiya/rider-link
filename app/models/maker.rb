class Maker < ActiveHash::Base
  include ActiveHash::Associations
  has_many :plans

  self.data = [
    {id: 1, name:'指定なし'},
    {id: 2, name:'スズキ限定'},
    {id: 3, name:'ホンダ限定'},
    {id: 4, name:'カワサキ限定'},
    {id: 5, name:'ヤマハ限定'},
  ]
end

