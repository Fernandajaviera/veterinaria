class CreatePethistories < ActiveRecord::Migration[6.1]
  def change
    create_table :pethistories do |t|
      t.float :peso
      t.float :altura
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
