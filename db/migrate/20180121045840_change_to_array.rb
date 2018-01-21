class ChangeToArray < ActiveRecord::Migration[5.2]
  def change
    change_column :looks, :tags, "varchar[] USING (string_to_array(tags, ','))"
  end
end
