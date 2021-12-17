class SignUp < ApplicationRecord
    
    belongs_to :activity
    belongs_to :camper

    # /** Time is Not Vaild **///
    validates :time , presence: true, numericality: { less_than_or_equal_to:23 }

end
