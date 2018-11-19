class LostAnimal < ApplicationRecord
  validates :species, :date_lost, :location_lost , :incident_id, :user_id, :lat, :long, presence: true
  belongs_to :incident
  belongs_to :user

  mount_uploader :image, ImageUploader
end
