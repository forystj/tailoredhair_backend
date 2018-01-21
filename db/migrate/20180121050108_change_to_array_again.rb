class ChangeToArrayAgain < ActiveRecord::Migration[5.2]
  def change
    change_column :stylists, :specialty, "varchar[] USING (string_to_array(specialty, ','))"
  end
end
