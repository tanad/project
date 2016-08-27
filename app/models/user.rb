class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    # By using this, we can access to the bookings and bicycles through the user model
    has_many :bookings
    has_many :bicycles, through: :bookings
end
