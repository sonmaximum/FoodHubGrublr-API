class AddNameToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :name, :string
  end
end
