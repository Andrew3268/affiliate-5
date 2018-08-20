class SearchController < ApplicationController
    
  def quicksearch
   @discount_codes = Code.all.order("created_at DESC").limit(12)
   @random_gadgets = Ecommerce.all.sample(9)
  end

  def discountCode
   @discount_codes = Code.all.order("created_at DESC")
  end

  def ourpick 
    @accessories = Accessory.all.order("created_at DESC")
  end

end
