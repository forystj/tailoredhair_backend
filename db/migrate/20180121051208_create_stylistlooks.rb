class CreateStylistlooks < ActiveRecord::Migration[5.2]
  def change
    create_table :stylistlooks do |t|
      t.references :stylist, foreign_key: true
      t.references :look, foreign_key: true

      t.timestamps
    end
  end
end
