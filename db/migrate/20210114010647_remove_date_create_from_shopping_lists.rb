class RemoveDateCreateFromShoppingLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :shopping_lists, :dateCreate, :datetime
  end
end
