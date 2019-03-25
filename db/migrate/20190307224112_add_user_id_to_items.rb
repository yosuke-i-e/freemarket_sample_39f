class AddUserIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :user, null: false
  end
end
