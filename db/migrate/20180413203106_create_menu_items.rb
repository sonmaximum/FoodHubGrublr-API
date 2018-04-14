class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :description
      t.decimal :price, precision: 10, scale: 2
      t.string :image
      t.references :menu_section, index: true, foreign_key: true

      t.timestamps
    end
  end
end
