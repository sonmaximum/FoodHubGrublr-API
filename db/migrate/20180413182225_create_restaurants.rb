class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.integer :phone_number
      t.string :description
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
