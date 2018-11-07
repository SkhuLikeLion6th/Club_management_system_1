class CreateApplyForms < ActiveRecord::Migration[5.0]
  def change
    create_table :apply_forms do |t|
      t.integer :club_id
      t.string :title1
      t.string :title2
      t.string :title3
      t.string :title4
      t.string :title5

      t.timestamps null: false
    end
  end
end
