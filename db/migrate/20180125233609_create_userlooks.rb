class CreateUserlooks < ActiveRecord::Migration[5.2]
  def change
    create_table :userlooks do |t|
      t.references :user, foreign_key: true
      t.references :looks, foreign_key: true

      t.timestamps
    end
  end
end
