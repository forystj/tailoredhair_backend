class CreateLooks < ActiveRecord::Migration[5.2]
  def change
    create_table :looks do |t|
      t.string :image
      t.string :caption
      t.integer :likes
      t.string :tags

      t.timestamps
    end
  end
end
