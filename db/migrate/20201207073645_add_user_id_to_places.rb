class AddUserIdToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :place_id, :integer
  end
end
