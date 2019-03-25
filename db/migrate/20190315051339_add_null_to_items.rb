class AddNullToItems < ActiveRecord::Migration[5.2]
  def change
    change_column_null :items, :description, false, 0
    change_column_null :items, :category_id, false, 0
    change_column_null :items, :postage, false, 0
    change_column_null :items, :shipping_date, false, 0
    change_column_null :items, :state, false, 0
    change_column_null :items, :region_id, false, 0
  end
end
