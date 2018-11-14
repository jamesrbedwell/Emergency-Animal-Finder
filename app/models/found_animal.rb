class FoundAnimal < ApplicationRecord
  belongs_to :incident
  belongs_to :user

  SPECIES = ['dog', 'cat', 'turtle', 'chicken', 'horse', 'bird']

  HEALTH = ['healthy', 'injured', 'severe']

end


