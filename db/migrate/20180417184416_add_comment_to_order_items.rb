class AddCommentToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :comment, :string
  end
end
