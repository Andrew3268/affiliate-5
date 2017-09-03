class WishlistEcommerce < ActiveRecord::Base
    
    belongs_to :wishlist
    belongs_to :ecommerce
end
