class AdddDescToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :description, :text
  end
end
