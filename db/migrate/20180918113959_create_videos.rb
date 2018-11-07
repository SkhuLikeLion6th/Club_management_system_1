class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      
      t.string :content
      t.text :title
      t.belongs_to  :user
      t.integer :club_id
      
      t.timestamps
    end
  end
end
