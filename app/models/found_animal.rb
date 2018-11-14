class FoundAnimal < ApplicationRecord
  belongs_to :incident
  belongs_to :user

  mount_uploader :image, ImageUploader
end


