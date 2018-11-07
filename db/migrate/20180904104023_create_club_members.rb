class CreateClubMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :club_members do |t|
      t.belongs_to :club
      t.belongs_to :user
      
      t.timestamps null: false
    end
  end
end
