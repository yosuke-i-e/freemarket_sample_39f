class AddStateToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :postage, :string
    add_column :items, :shipping_date, :string
    add_column :items, :shipping_method, :string
  end
end
