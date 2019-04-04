class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.integer :idGallery
      t.string :LinkIMG

      t.timestamps
    end
  end
end
