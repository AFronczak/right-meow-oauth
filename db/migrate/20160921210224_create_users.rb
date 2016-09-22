class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :access_token

      t.timestamps
    end
  end
end
