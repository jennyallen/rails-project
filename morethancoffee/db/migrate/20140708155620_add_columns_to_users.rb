class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :lookingfor, :string
    add_column :users, :genderpref, :string   
  end
end
