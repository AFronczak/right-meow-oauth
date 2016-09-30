class CareProvider < ApplicationRecord
  has_many :specializations
  has_many :pet_types, through: :specializations

  validates :name, presence: true
  validates :address, presence: true
  validates :website, presence: true

  geocoded_by :address
  after_validation :geocode
end
