class PetType < ApplicationRecord
  has_many :specializations
  has_many :care_providers, through: :specializations
end
