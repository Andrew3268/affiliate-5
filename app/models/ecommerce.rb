class Ecommerce < ActiveRecord::Base
  paginates_per 20
  has_many :wishlist_ecommerces
  has_many :wishlists, through: :wishlist_ecommerces
    
    def self.search(search)
      where("title LIKE ?", "%#{search}%") 
      where("intro LIKE ?", "%#{search}%" )
    end
    
  belongs_to :user
  belongs_to :category
  belongs_to :pcategory
end
