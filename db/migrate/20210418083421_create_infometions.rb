class CreateInfometions < ActiveRecord::Migration[6.0]
  def change
    create_table :infometions do |t|
      t.integer    :year_id
      t.integer    :moon_id
      t.integer    :day_id
      t.string     :title
      t.text       :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
