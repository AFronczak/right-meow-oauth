class CreatePetTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :pet_types do |t|
      t.string :type_of_pet

      t.timestamps
    end
  end
end
