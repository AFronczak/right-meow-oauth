class AddCoordinates < ActiveRecord::Migration[5.0]
  def change
    add_column :care_providers, :phone, :string
    add_column :care_providers, :latitude, :float
    add_column :care_providers, :longitude, :float
  end
end
