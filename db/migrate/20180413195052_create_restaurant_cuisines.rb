class CreateRestaurantCuisines < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_cuisines do |t|
      t.belongs_to :cuisine, index: true, foreign_key: true
      t.belongs_to :restaurant, index: true, foreign_key: true

      t.timestamps
    end
  end
end
