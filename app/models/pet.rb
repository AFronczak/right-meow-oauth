class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :pet_type
  has_many :care_providers, through: :pet_type

  def pet_type_name
    pet_type ? pet_type.type_of_pet : "Pet"
  end
end
