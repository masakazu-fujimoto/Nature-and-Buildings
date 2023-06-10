class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :text
      t.string :image
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
