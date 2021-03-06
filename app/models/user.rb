class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :wishlist
  has_many :shoes
  has_many :codes
  has_many :bags
  has_many :blogs
  has_many :clothes
  has_many :accessories
  has_many :discounts
  has_many :curations
end
