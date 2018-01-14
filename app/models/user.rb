class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # EACH USER HAS ONE PROFILE AND USER TYPE
  has_one :profile 
  # If the user is destroyed then the userposts will be destroyed as well
  has_many :userposts, dependent: :destroy
end
