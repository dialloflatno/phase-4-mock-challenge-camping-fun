class Activity < ApplicationRecord
    has_many :signups
    has_many :camper, through: :signups

end
