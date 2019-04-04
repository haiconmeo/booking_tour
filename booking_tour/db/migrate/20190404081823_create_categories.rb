class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :idCategory
      t.string :Tour_Types

      t.timestamps
    end
  end
end
