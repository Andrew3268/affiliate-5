class Wishlist < ActiveRecord::Base
    belongs_to :user
    has_many :wishlist_ecommerces
    has_many :ecommerces, through: :wishlist_ecommerces
end

