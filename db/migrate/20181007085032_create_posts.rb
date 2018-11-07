class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      
      t.string :content
      t.text :title
      t.belongs_to :user
      t.integer :club_id
      
      t.timestamps
    end
  end
end
