class EcommercesController < ApplicationController
  
  before_action :authenticate_user!, only:[:create, :upload]
  
  def search
    @search = Ecommerce.all
    if params[:search]
      @search = Ecommerce.search(params[:search]).order("created_at DESC")
    else
      @search = Ecommerce.all.order('created_at DESC')
    end
    
    @searchbanner = Ecommerce.all
    @sidebanner_01 = @searchbanner.sample
    @sidebanner_02 = @searchbanner.sample
    @sidebanner_03 = @searchbanner.sample
    @sidebanner_04 = @searchbanner.sample
    @sidebanner_05 = @searchbanner.sample
    @sidebanner_06 = @searchbanner.sample
    @sidebanner_07 = @searchbanner.sample
    @sidebanner_08 = @searchbanner.sample
    @sidebanner_09 = @searchbanner.sample
    @sidebanner_10 = @searchbanner.sample
  end
  
  
  def category_price
    if params[:category].blank?
     @ecommerces = Ecommerce.all
    else
     @category_id = Category.find_by(name: params[:category]).id
     @ecommerces = Ecommerce.where(:category_id => @category_id).order("created_at DESC")
    end
    
     @category_price_sidebanner = Ecommerce.all
     @sidebanner_01 = @category_price_sidebanner.sample
     @sidebanner_02 = @category_price_sidebanner.sample
     @sidebanner_03 = @category_price_sidebanner.sample
     @sidebanner_04 = @category_price_sidebanner.sample
     @sidebanner_05 = @category_price_sidebanner.sample
     @sidebanner_06 = @category_price_sidebanner.sample
     @sidebanner_07 = @category_price_sidebanner.sample
     @sidebanner_08 = @category_price_sidebanner.sample
     @sidebanner_09 = @category_price_sidebanner.sample
     @sidebanner_10 = @category_price_sidebanner.sample
  end
  
  def pcategory_product
    if params[:pcategory].blank?
     @ecommerces = Ecommerce.all
    else
     @pcategory_id = Pcategory.find_by(name: params[:pcategory]).id
     @ecommerces = Ecommerce.where(:pcategory_id => @pcategory_id).order("created_at DESC")
    end
    
     @pcategory_price_sidebanner = Ecommerce.all
     @sidebanner_01 = @pcategory_price_sidebanner.sample
     @sidebanner_02 = @pcategory_price_sidebanner.sample
     @sidebanner_03 = @pcategory_price_sidebanner.sample
     @sidebanner_04 = @pcategory_price_sidebanner.sample
     @sidebanner_05 = @pcategory_price_sidebanner.sample
     @sidebanner_06 = @pcategory_price_sidebanner.sample
     @sidebanner_07 = @pcategory_price_sidebanner.sample
     @sidebanner_08 = @pcategory_price_sidebanner.sample
     @sidebanner_09 = @pcategory_price_sidebanner.sample
     @sidebanner_10 = @pcategory_price_sidebanner.sample
  end
  
  
  def index
     @ecommerces = Ecommerce.all

     @ecommerces_sample = Ecommerce.all    
     @banner = @ecommerces_sample.sample
     @sidebanner_01 = @ecommerces_sample.sample
     @sidebanner_02 = @ecommerces_sample.sample
     @sidebanner_03 = @ecommerces_sample.sample
     @sidebanner_04 = @ecommerces_sample.sample
     @sidebanner_05 = @ecommerces_sample.sample
     @sidebanner_06 = @ecommerces_sample.sample
     @sidebanner_07 = @ecommerces_sample.sample
     @sidebanner_08 = @ecommerces_sample.sample
     @sidebanner_09 = @ecommerces_sample.sample
     @sidebanner_10 = @ecommerces_sample.sample
  end
  
  def upload
    @categories = Category.all.map{ |c| [c.name, c.id] }
    @pcategories = Pcategory.all.map{ |pc| [pc.name, pc.id] }
    if user_signed_in? and current_user.admin == false
      flash[:warning] = 'Only admin can access.'
      redirect_to '/'
    end
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
        uptodate.youtube_link_01 = params[:new_youtube_link_01]
        uptodate.youtube_link_02 = params[:new_youtube_link_02]
        uptodate.category_id = params[:category_id]
        uptodate.save
        
        redirect_to '/'
  end
  
  def edit
    @adjust = Ecommerce.find(params[:id])
  end
  
  def update
    up = Ecommerce.find(params[:id])
    up.title = params[:new_title]
    up.image_main = params[:new_image_main]
    up.image_01 = params[:new_image_01]
    up.image_02 = params[:new_image_02]
    up.image_03 = params[:new_image_03]
    up.image_04 = params[:new_image_04]
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
    up.youtube_link_01 = params[:new_youtube_link_01]
    up.youtube_link_02 = params[:new_youtube_link_02]
    up.category_id = params[:category_id]
    up.save
    
    redirect_to '/'
  end
  
  def destroy
    ecommerce = Ecommerce.find(params[:id])
    ecommerce.destroy

    redirect_to '/'
  end
  
  def detail
    @details = Ecommerce.find(params[:id])
    @detail_sidebar = Ecommerce.all
    @sidebanner_01 = @detail_sidebar.sample
    @sidebanner_02 = @detail_sidebar.sample
    @sidebanner_03 = @detail_sidebar.sample
    @sidebanner_04 = @detail_sidebar.sample
    @sidebanner_05 = @detail_sidebar.sample
    @sidebanner_06 = @detail_sidebar.sample
    @sidebanner_07 = @detail_sidebar.sample
    @sidebanner_08 = @detail_sidebar.sample
    @sidebanner_09 = @detail_sidebar.sample
    @sidebanner_10 = @detail_sidebar.sample
  end
  
  
  
end


   