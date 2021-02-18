class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :image
      t.text :rating
      t.text :place_id

      t.timestamps
    end
  end
end
