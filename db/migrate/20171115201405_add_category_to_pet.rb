class AddCategoryToPet < ActiveRecord::Migration[5.1]
  def change
    add_reference :pets, :category, foreign_key: true
  end
end
