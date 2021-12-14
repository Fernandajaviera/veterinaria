class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :nombre
      t.string :raza
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
