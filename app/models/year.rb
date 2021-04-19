class Year < ActiveHash::Base
  include ActiveHash::Associations
  has_many :plans
  has_many :infometions

  self.data = [
    {id: 1, name:'--'},
    {id: 2, name:'2021'},
    {id: 3, name:'2022'},
    {id: 4, name:'2023'},
    {id: 5, name:'2024'},
    {id: 6, name:'2025'},
    {id: 7, name:'2026'},
    {id: 8, name:'2027'},
    {id: 9, name:'2028'},
    {id: 10, name:'2029'},
    {id: 11, name:'2030'},
    {id: 12, name:'2031'},
    {id: 13, name:'2032'},
  ]
end
