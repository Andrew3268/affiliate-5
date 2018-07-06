class SearchController < ApplicationController

    
    def quicksearch
     @discount_codes = Code.all.order("created_at DESC")
     @random_gadgets = Ecommerce.all.sample(9)
    end


end
