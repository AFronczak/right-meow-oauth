class CreateCareProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :care_providers do |t|
      t.string :name
      t.string :address
      t.string :website
      t.timestamps
    end
  end
end
