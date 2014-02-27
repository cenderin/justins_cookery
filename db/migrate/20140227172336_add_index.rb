class AddIndex < ActiveRecord::Migration
  def change
    add_index :users, :id
    add_index :users, :email
  end

end
