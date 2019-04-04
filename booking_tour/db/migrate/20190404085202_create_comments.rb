class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :idComments
      t.integer :idTour
      t.string :Name
      t.string :Comments_Details
      t.boolean :Like

      t.timestamps
    end
  end
end
