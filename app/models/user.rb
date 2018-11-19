class User < ApplicationRecord
    has_many :lost_animals
    has_many :found_animals
    has_secure_password
end
