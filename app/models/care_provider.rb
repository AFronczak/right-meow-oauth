class CareProvider < ApplicationRecord
  has_many :specializations
  has_many :pet_types, through: :specializations

  validates :name, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode
end
