class CreateSmallGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :small_groups do |t|
      t.text :group_name
      t.string :introduce
      t.string :img_url
      t.string :content
      t.timestamps
    end
  end
end
