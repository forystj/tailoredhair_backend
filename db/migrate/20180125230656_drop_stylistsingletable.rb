class DropStylistsingletable < ActiveRecord::Migration[5.2]
  def change
    drop_table :stylists
  end
end
