class Bicycle < ActiveRecord::Base
    # By using this, we can access to the bookings and users through the bicycle model
    has_many :bookings
    has_many :users, through: :bookings
end
