class Power < ActiveHash::Base
  include ActiveHash::Associations
  has_many :plans

  self.data = [
    {id: 1, name:'指定なし'},
    {id: 2, name:'50cc未満不可'},
    {id: 3, name:'50cc未満限定'},
    {id: 4, name:'125cc未満不可'},
    {id: 5, name:'125cc未満限定'},
    {id: 6, name:'126~400cc限定'},
    {id: 7, name:'401cc以上不可'},
    {id: 8, name:'401cc以上限定'},
  ]
end
