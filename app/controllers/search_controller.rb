class SearchController < ApplicationController
    
  def quicksearch
   @discount_codes = Code.all.order("created_at DESC").limit(12)
   @random_gadgets = Ecommerce.all.sample(9)
  end

  def quicksearchUk
    @accessories = Accessory.all.order("created_at DESC").page(params[:page]).per(12)
  end

  def discountCode
   @discount_codes = Code.all.order("created_at DESC").page(params[:page]).per(24)
  end

  def bestDeal 
    @accessories = Accessory.all.order("created_at DESC").page(params[:page]).per(24)
  end

  def new_discount
    @discount_codes = Code.all.order("created_at DESC").page(params[:page]).per(24)
  end

end
