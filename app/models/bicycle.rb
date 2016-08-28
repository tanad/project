class Bicycle < ActiveRecord::Base
    # By using this, we can access to the bookings and users through the bicycle model
    has_many :bookings
    has_many :users, through: :bookings
    
    def self.search(search_for)
        Bicycle.where("Title like ?", "%#{search_for}%") 
        #by using like  and "%#{search_for}%" it allows us  to search not only for the exact word 
    end
end
