class WishlistsController < ApplicationController
  before_action :authenticate_user!, only:[:add, :show] 
    
    
    def add
      
      wishlist = current_user.wishlist
      
      if wishlist == nil
        wishlist = Wishlist.create(user_id: current_user.id)
      end
      
      ecommerce = Ecommerce.find(params[:ecommerce_id])
      
      ecommerce_ids = wishlist.ecommerces.map(&:id)
      if ecommerce_ids.include? ecommerce.id
        flash[:message] = 'Alread exist on the Wish-List!!'
        redirect_to "/ecommerces/detail/#{ecommerce.id}" and return
      end
      
      WishlistEcommerce.create(wishlist_id: wishlist.id,
                               ecommerce_id: ecommerce.id)
      
      flash[:message] = 'Added to Wish-List!!'
      redirect_to "/ecommerces/detail/#{ecommerce.id}"
    end
    
    def show
      @ecommerces = current_user.wishlist.ecommerces
      @show = Ecommerce.all
      @show_sidebar_01 = @show.sample
      @show_sidebar_02 = @show.sample
      @show_sidebar_03 = @show.sample
    end
    
    def destroy
      
      wishlist_id = current_user.wishlist.id
      
      link = WishlistEcommerce.where(
        wishlist_id: wishlist_id,
        ecommerce_id: params[:ecommerce_id]
      )[0]
      
      link.destroy!
      
      redirect_to :back
    end
end
