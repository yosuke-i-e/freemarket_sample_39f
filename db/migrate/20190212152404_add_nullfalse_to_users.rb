class AddNullfalseToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :nickname, false
    change_column_null :users, :last_name, false
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name_kana, false
    change_column_null :users, :first_name_kana, false
    change_column_null :users, :birth_year, false
    change_column_null :users, :birth_month, false
    change_column_null :users, :birth_day, false
  end
end
