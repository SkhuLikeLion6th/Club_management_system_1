class CreateGroupOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :group_options do |t|
      t.belongs_to :small_group
      t.string :apply_active, default: 1 # 0: 지원 비활성화, 1: 지원 활성화
      t.string :view_active, default: 1 # 0: 보이는거 비활성화, 1: 보이는거 활성화
      
      t.timestamps
    end
  end
end
