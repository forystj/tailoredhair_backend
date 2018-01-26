class AddSpecialtyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :specialty, :string
  end
end
