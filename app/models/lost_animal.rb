class LostAnimal < ApplicationRecord
  belongs_to :incident
  belongs_to :user

  def distance_from(latlong)
    Geocoder::Calculations.distance_between(
        [latitude, longitude], 
        [-37.814, 144.96332]
    )
  end
end
