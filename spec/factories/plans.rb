FactoryBot.define do
  factory :plan do
    year_id         {2}
    moon_id         {2}
    day_id          {2}
    power_id        {1}
    maker_id        {1}
    highway_id      {1}
    age_min_id      {1}
    age_max_id      {1}
    conditions      {"何とか駅に１０時に集合"}
    prefecture_id   {2}
    association :user, factory: :user
  end
end
