class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.belongs_to :restaurant, index: true, foreign_key: true

      t.timestamps
    end
  end
end
