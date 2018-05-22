class EcommercesController < ApplicationController
  
  before_action :authenticate_user!, only:[:create, :upload]


  def gadgets
    @ecommerces = Ecommerce.all
    @ecommerces = Ecommerce.order("created_at DESC").page(params[:page]).per(21)
    @random_gadgets = Ecommerce.all.sample(9)
  end
  
  def index
     @ecommerces = Ecommerce.all
     @ecommerces = Ecommerce.order("created_at DESC").limit(6)
     @shoes = Shoe.order("created_at DESC").limit(5)
  end

  def detail
    @details = Ecommerce.find(params[:id])
    @random_gadgets = Ecommerce.all.sample(9)
  end
  
  def search
    @search = Ecommerce.all
    if params[:search]
      @search = Ecommerce.search(params[:search]).order("created_at DESC").page(params[:page]).per(21)
    else
      @search = Ecommerce.all.order('created_at DESC')
    end
     @random_gadgets = Ecommerce.all.sample(9)
  end
  
  def category_price
    if params[:category].blank?
     @ecommerces = Ecommerce.all
    else
     @category_id = Category.find_by(name: params[:category]).id
     @ecommerces = Ecommerce.where(:category_id => @category_id).order("created_at DESC").page(params[:page]).per(21)
    end
     @random_gadgets = Ecommerce.all.sample(9)
  end
  
  def pcategory_product
    if params[:pcategory].blank?
     @ecommerces = Ecommerce.all
    else
     @pcategory_id = Pcategory.find_by(name: params[:pcategory]).id
     @ecommerces = Ecommerce.where(:pcategory_id => @pcategory_id).order("created_at DESC").page(params[:page]).per(21)
    end
     @random_gadgets = Ecommerce.all.sample(9)
  end

  def upload
    @categories = Category.all.map{ |c| [c.name, c.id] }
    @pcategories = Pcategory.all.map{ |pc| [pc.name, pc.id] }
    # if user_signed_in? and current_user.admin == false
    #   flash[:warning] = 'Only admin can access.'
    #   redirect_to '/'
    # end
  end

  def edit
    @adjust = Ecommerce.find(params[:id])
  end
  
  def destroy
    ecommerce = Ecommerce.find(params[:id])
    ecommerce.destroy
    redirect_to '/'
  end
  
  def create
    uptodate = Ecommerce.new
    uptodate.user_id = current_user.id
    uptodate.title = params[:new_title]
    uptodate.image_main = params[:new_image_main]
    uptodate.image_01 = params[:new_image_01]
    uptodate.image_02 = params[:new_image_02]
    uptodate.image_03 = params[:new_image_03]
    uptodate.image_04 = params[:new_image_04]
    uptodate.image_05 = params[:new_image_05]
    uptodate.image_06 = params[:new_image_06]
    uptodate.sources = params[:new_sources]
    uptodate.intro = params[:new_intro]
    uptodate.price_before = params[:new_price_before]
    uptodate.price_after = params[:new_price_after]
    uptodate.description = params[:new_description]
    uptodate.description_01 = params[:new_description_01]
    uptodate.description_02 = params[:new_description_02]
    uptodate.description_03 = params[:new_description_03]
    uptodate.description_04 = params[:new_description_04]
    uptodate.description_05 = params[:new_description_05]
    uptodate.site_link = params[:new_site_link]
    uptodate.site_link_uk = params[:new_site_link_uk]
    uptodate.site_link_ca = params[:new_site_link_ca]
    uptodate.site_link_jp = params[:new_site_link_jp]
    uptodate.youtube_link_01 = params[:new_youtube_link_01]
    uptodate.youtube_link_02 = params[:new_youtube_link_02]
    uptodate.category_id = params[:category_id]
    uptodate.pcategory_id = params[:pcategory_id]

    uptodate.postive_review = params[:new_postive_review]
    uptodate.critical_review = params[:new_critical_review]
    uptodate.postive_howmany = params[:new_postive_howmany]
    uptodate.critical_howmany = params[:new_critical_howmany]
    uptodate.postive_review_link = params[:new_postive_review_link]
    uptodate.critical_review_link = params[:new_critical_review_link]
    uptodate.postive_review_by = params[:new_postive_review_by]
    uptodate.critical_review_by = params[:new_critical_review_by]
    uptodate.see_more_review = params[:new_see_more_review]

    uptodate.amazon_prime = params[:new_amazon_prime]
    uptodate.free_shipping = params[:new_free_shipping]
    uptodate.amazon_visa_card = params[:new_amazon_visa_card]
    uptodate.amazon_visa_card_link = params[:new_amazon_visa_card_link]
    uptodate.buy_used = params[:new_buy_used]
    uptodate.buy_used_link = params[:new_buy_used_link]
    uptodate.coupon = params[:new_coupon]
    uptodate.coupon_link = params[:new_coupon_link]
    uptodate.discount_code = params[:new_discount_code]
    uptodate.discount_code_link = params[:new_discount_code_link]


    uptodate.save   
    redirect_to '/'
  end

  def update
    up = Ecommerce.find(params[:id])
    up.title = params[:new_title]
    up.image_main = params[:new_image_main]
    up.image_01 = params[:new_image_01]
    up.image_02 = params[:new_image_02]
    up.image_03 = params[:new_image_03]
    up.image_04 = params[:new_image_04]
    up.image_05 = params[:new_image_05]
    up.image_06 = params[:new_image_06]
    up.intro = params[:new_intro]
    up.sources = params[:new_sources]
    up.price_before = params[:new_price_before]
    up.price_after = params[:new_price_after]
    up.description = params[:new_description]
    up.description_01 = params[:new_description_01]
    up.description_02 = params[:new_description_02]
    up.description_03 = params[:new_description_03]
    up.description_04 = params[:new_description_04]
    up.description_05 = params[:new_description_05]
    up.site_link = params[:new_site_link]
    up.site_link_uk = params[:new_site_link_uk]
    up.site_link_ca = params[:new_site_link_ca]
    up.site_link_jp = params[:new_site_link_jp]
    up.youtube_link_01 = params[:new_youtube_link_01]
    up.youtube_link_02 = params[:new_youtube_link_02]
    up.category_id = params[:category_id]
    up.pcategory_id = params[:pcategory_id]

    up.postive_review = params[:new_postive_review]
    up.critical_review = params[:new_critical_review]
    up.postive_howmany = params[:new_postive_howmany]
    up.critical_howmany = params[:new_critical_howmany]
    up.postive_review_link = params[:new_postive_review_link]
    up.critical_review_link = params[:new_critical_review_link]
    up.postive_review_by = params[:new_postive_review_by]
    up.critical_review_by = params[:new_critical_review_by]
    up.see_more_review = params[:new_see_more_review]

    up.amazon_prime = params[:new_amazon_prime]
    up.free_shipping = params[:new_free_shipping]
    up.amazon_visa_card = params[:new_amazon_visa_card]
    up.amazon_visa_card_link = params[:new_amazon_visa_card_link]
    up.buy_used = params[:new_buy_used]
    up.buy_used_link = params[:new_buy_used_link]
    up.coupon = params[:new_coupon]
    up.coupon_link = params[:new_coupon_link]
    up.discount_code = params[:new_discount_code]
    up.discount_code_link = params[:new_new_discount_code_link]
    up.save    
    redirect_to '/ecommerces/gadgets'
  end
  
end


   