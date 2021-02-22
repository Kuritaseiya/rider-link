class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer    :year_id
      t.integer    :moon_id
      t.integer    :day_id
      t.integer    :participant_id
      t.integer    :power_id
      t.integer    :maker_id
      t.integer    :highway_id
      t.integer    :age_min_id
      t.integer    :age_max_id
      t.text       :conditions
      t.integer    :prefecture_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
