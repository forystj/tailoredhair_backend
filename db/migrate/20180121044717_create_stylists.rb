class CreateStylists < ActiveRecord::Migration[5.2]
  def change
    create_table :stylists do |t|
      t.string :avatar
      t.string :specialty
      t.string :enjoy
      t.string :location

      t.timestamps
    end
  end
end
