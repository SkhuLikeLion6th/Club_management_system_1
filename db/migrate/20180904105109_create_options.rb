class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.integer :club_id
      t.string :apply_active, default: 1 # 0: 지원 비활성화, 1: 지원 활성화
 
      t.timestamps null: false
    end
  end
end
