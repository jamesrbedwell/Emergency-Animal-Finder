class LostAnimal < ApplicationRecord
  belongs_to :incident
  belongs_to :user
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    date = Time.now
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end  
    
end
