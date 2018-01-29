class ChangeSpecialtyToArray < ActiveRecord::Migration[5.2]
  def change
      change_column :users, :specialty, "varchar[] USING (string_to_array(specialty, ','))"
  end
end
