class CreateSmallGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :small_groups do |t|
      t.string :group_name
      t.string :introduce
      t.string :img_url
      t.timestamps
    end
  end
end
