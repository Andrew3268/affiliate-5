class Ecommerce < ActiveRecord::Base
  has_many :wishlist_ecommerces
  has_many :wishlists, through: :wishlist_ecommerces
    
    def self.search(search)
      where("title LIKE ?", "%#{search}%") 
    end
end
