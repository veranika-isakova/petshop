class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.integer :tel_nr
      t.string :street
      t.string :house_nr
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
