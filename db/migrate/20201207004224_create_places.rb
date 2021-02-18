class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.text :setting
      t.text :state
      t.text :address

      t.timestamps
    end
  end
end
