class AddEnjoyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :enjoy, :string
  end
end
