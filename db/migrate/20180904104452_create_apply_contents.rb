class CreateApplyContents < ActiveRecord::Migration[5.0]
  def change
    create_table :apply_contents do |t|
      t.integer :apply_form_id
      t.integer :user_id
      t.text :content1
      t.text :content2
      t.text :content3
      t.text :content4
      t.text :content5

      t.timestamps null: false
    end
  end
end
