class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :idUser
      t.string :Username
      t.string :Password
      t.string :Name
      t.boolean :Sex
      t.string :Address
      
      t.text :Email
      t.integer :PhoneNum
      t.text :PassQuestions
      t.text :PassAnswer
      t.integer :Roles

      t.timestamps
    end
  end
end
