class Booking < ActiveRecord::Base
    belongs_to :user
    belongs_to :bicycle
end
