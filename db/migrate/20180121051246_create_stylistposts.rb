class CreateStylistposts < ActiveRecord::Migration[5.2]
  def change
    create_table :stylistposts do |t|
      t.references :stylist, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
