class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :idFeedback
      t.integer :idUser
      t.text :Feedbacks_Title
      t.text :FeedBacks_Details
      t.integer :Rate
      

      t.timestamps
    end
  end
end
