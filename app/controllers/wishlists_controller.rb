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
        flash[:message] = 'alread exist on your Wish List'
        redirect_to "/ecommerces/detail/#{ecommerce.id}" and return
      end
      
      WishlistEcommerce.create(wishlist_id: wishlist.id,
                               ecommerce_id: ecommerce.id)
      
      flash[:message] = 'has been added to your Wish List'
      redirect_to "/ecommerces/detail/#{ecommerce.id}"
    end
    
    def show
      @ecommerces = current_user.wishlist.ecommerces
      @random_gadgets = Ecommerce.all.sample(9)
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
