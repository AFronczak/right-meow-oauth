class Specialization < ApplicationRecord
  belongs_to :care_provider
  belongs_to :pet_type
end
