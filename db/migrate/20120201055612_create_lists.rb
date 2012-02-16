class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :text
      t.string :user_email
      t.string :url

      t.timestamps
    end
  end
end
