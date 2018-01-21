class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.boolean :stylist_status
      t.boolean :client_status

      t.timestamps
    end
  end
end
