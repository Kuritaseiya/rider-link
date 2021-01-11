class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string     :when
      t.text       :conditions
      t.integer    :prefecture_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
