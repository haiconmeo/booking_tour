class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.integer :idTour
      t.integer :idGallery
      t.integer :idCategory
      t.integer :idComment
      t.integer :idBooktourDetails
      t.string :Tour_Review
      
      t.text :Tour_Details
      t.integer :Tour_Price
      t.date :Tour_DayStart
      t.date :Tour_DayEnd
      t.text :Tour_PlaceStart

      t.timestamps
    end
  end
end
