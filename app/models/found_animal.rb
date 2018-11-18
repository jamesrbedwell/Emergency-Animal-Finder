class FoundAnimal < ApplicationRecord
  validates :species, :date_found, :location_found, :location_current, :incident_id, :user_id, :lat, :long, presence: true
  belongs_to :incident
  belongs_to :user

  mount_uploader :image, ImageUploader
end


