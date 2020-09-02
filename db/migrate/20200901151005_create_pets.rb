class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.date :found_on
      t.boolean :was_found, default: false, nil: false

      t.timestamps
    end
  end
end
