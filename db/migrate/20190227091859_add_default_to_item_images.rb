class AddDefaultToItemImages < ActiveRecord::Migration[5.2]
  def change
    change_column_null :item_images, :body, false
    change_column_null :item_images, :item_id, false
  end
end
