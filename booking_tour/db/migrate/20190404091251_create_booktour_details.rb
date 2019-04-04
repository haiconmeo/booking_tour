class CreateBooktourDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :booktour_details do |t|
      t.integer :idBooktourDetails
      t.integer :idTour
      t.date :DateDay
      t.integer :Tour_Price
      t.integer :Mem_Num
      t.text :Requests
      t.integer :idUsers
      t.integer :Status

      t.timestamps
    end
  end
end
