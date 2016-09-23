class CareProvider < ApplicationRecord
  has_many :specializations
  has_many :pet_types, through: :specializations
end
