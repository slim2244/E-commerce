class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :condition
      t.timestamps
      
    end
  end
end
