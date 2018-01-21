class ChangeToArrayAgainAgain < ActiveRecord::Migration[5.2]
  def change
    change_column :stylists, :enjoy, "varchar[] USING (string_to_array(enjoy, ','))"
  end
end
