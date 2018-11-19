class Incident < ApplicationRecord
    has_many :lost_animals, dependent: :destroy
    has_many :found_animals, dependent: :destroy 
    has_many :users, through: :lost_animals
    has_many :users, through: :found_animals
end
