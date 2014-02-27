class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :users, :user
  end
end
