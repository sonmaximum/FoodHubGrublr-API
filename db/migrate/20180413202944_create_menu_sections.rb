class CreateMenuSections < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_sections do |t|
      t.string :heading
      t.references :menu, index: true, foreign_key: true

      t.timestamps
    end
  end
end
