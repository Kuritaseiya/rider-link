class CreateContactUsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_us_users do |t|
      t.string  :title
      t.text    :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
