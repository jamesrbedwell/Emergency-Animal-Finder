class User < ApplicationRecord
    validates :email, uniqueness: true;
    has_many :lost_animals
    has_many :found_animals
    has_secure_password
end
