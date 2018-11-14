class Incident < ApplicationRecord
    has_many :lost_animals
    has_many :found_animals
    has_many :users, through: :lost_animals
    has_many :users, through: :found_animals
end
