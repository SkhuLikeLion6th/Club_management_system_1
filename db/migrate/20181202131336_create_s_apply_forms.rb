class CreateSApplyForms < ActiveRecord::Migration[5.0]
  def change
    create_table :s_apply_forms do |t|
      t.integer :small_group_id
      t.string :title1
      t.string :title2
      t.string :title3
      t.string :title4
      t.string :title5
      t.timestamps
    end
  end
end
