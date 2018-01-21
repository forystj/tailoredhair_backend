class CreateStyliststatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :styliststatuses do |t|
      t.references :user, foreign_key: true
      t.references :stylist, foreign_key: true

      t.timestamps
    end
  end
end
