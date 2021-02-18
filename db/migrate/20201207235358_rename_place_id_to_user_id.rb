class RenamePlaceIdToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :places, :place_id, :user_id
  end
end
 
