class CreateJoinTablePetCategory < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pets, :categories do |t|
      t.index [:pet_id, :category_id]
      t.index [:category_id, :pet_id]
    end
  end
end
