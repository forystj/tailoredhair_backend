class CreateTable < ActiveRecord::Migration[5.2]
  def change
    create_table :userlooks do |t|
      t.references :user, foreign_key: true
      t.references :look, foreign_key: true
      
      t.timestamps
    end
  end
end
