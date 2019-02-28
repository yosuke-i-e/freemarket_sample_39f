class CreateItemImages < ActiveRecord::Migration[5.2]
  def change
    create_table :item_images do |t|
      t.string :body
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
