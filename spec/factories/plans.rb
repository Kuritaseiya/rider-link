FactoryBot.define do
  factory :plan do
    year_id         {2}
    moon_id         {2}
    day_id          {2}
    conditions      {"何とか駅に１０時に集合"}
    prefecture_id   {2}
    association :user, factory: :user
  end
end
