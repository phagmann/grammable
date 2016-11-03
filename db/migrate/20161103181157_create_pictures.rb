class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :caption
      t.integer :gram_id
      t.string :pic
      t.timestamps
    end
  end
end
