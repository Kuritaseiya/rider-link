FactoryBot.define do
  factory :user do
    nickname                        {"maedap"}
    email                           {Faker::Internet.free_email }
    password                        {"Ninjah2r"}
    password_confirmation           {password}
    age                             {24}
    mybike                          {"ninja250"}
    prefecture_id                   {2}
    gender_id                       {2}
  end
end