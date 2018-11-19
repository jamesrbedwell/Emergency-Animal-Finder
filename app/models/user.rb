class User < ApplicationRecord
    validates :email, uniqueness: true;
    has_many :lost_animals
    has_many :found_animals
    has_secure_password

    def distance_from(latlong)
        Geocoder::Calculations.distance_between(
            [latitude, longitude], 
            [userLocation.position.lat, userLocation.position.long]
        )
    end
end
