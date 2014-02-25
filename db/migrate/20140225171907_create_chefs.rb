class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
    	t.string	:avatar
    	t.string :show
    	t.string :name
    	t.string :speciality

      t.timestamps
    end
  end
end