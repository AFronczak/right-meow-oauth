class CreateSpecializations < ActiveRecord::Migration[5.0]
  def change
    create_table :specializations do |t|
      t.belongs_to :care_providers, index: true
      t.belongs_to :pet_types, index: true

      t.timestamps
    end
  end
end
