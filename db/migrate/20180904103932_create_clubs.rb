class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :club_name
      t.text :introduce
      t.string :img_url

      t.timestamps null: false
    end
  end
end
                                          