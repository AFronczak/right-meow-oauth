class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :pet_type

  def type_of_pet
    pet_type.type_of_pet
  end
end
