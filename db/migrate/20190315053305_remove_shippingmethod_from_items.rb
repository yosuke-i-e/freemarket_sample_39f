class RemoveShippingmethodFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :shipping_method
  end
end
