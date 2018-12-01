class CreateGroupMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :group_members do |t|
      t.belongs_to :user
      t.belongs_to :small_group

      t.timestamps
    end
  end
end
