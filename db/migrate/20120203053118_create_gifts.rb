class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.text :text
      t.integer :booked
      t.references :list

      t.timestamps
    end
    add_index :gifts, :list_id
  end
end
