class DropStyliststatusestable < ActiveRecord::Migration[5.2]
  def change
    drop_table :styliststatuses
  end
end
