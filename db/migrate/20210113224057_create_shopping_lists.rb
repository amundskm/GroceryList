class CreateShoppingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_lists do |t|
      t.text :title
      t.datetime :dateCreate

      t.timestamps
    end
  end
end
