class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :gender
      t.integer :age
      t.decimal :price
      t.string :remote_image_url

      t.timestamps
    end
  end
end
