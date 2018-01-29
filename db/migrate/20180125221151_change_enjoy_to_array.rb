class ChangeEnjoyToArray < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :enjoy, "varchar[] USING (string_to_array(enjoy, ','))"
  end
end
