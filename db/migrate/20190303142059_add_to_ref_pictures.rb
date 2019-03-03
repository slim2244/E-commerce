class AddToRefPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :administrator, index: true
  end
end
