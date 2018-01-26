class DropStyliststable < ActiveRecord::Migration[5.2]
  def change
    drop_table :stylistposts
  end
end
