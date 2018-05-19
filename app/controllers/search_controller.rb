class SearchController < ApplicationController
    
    def quicksearch
     @random_gadgets = Ecommerce.all.sample(9)
    end
end
