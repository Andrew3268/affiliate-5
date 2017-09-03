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
    @searchbanner_01 = @searchbanner.sample
    @searchbanner_02 = @searchbanner.sample
    @searchbanner_03 = @searchbanner.sample
  end
  
  def index
    @ecommerces = Ecommerce.all
    @banner = @ecommerces.sample
    @sidebanner_01 = @ecommerces.sample
    @sidebanner_02 = @ecommerces.sample
    @sidebanner_03 = @ecommerces.sample
  end
  
  def upload
    if user_signed_in? and current_user.admin == false
      flash[:warning] = 'Only admin can access.'
      redirect_to '/'
    end
  end
  
  def create
        uptodate = Ecommerce.new
        uptodate.title = params[:new_title]
        uptodate.image_main = params[:new_image_main]
        uptodate.image_01 = params[:new_image_01]
        uptodate.image_02 = params[:new_image_02]
        uptodate.image_03 = params[:new_image_03]
        uptodate.image_04 = params[:new_image_04]
        uptodate.intro = params[:new_intro]
        uptodate.price = params[:new_price]
        uptodate.description = params[:new_description]
        uptodate.description_01 = params[:new_description_01]
        uptodate.description_02 = params[:new_description_02]
        uptodate.description_03 = params[:new_description_03]
        uptodate.description_04 = params[:new_description_04]
        uptodate.description_05 = params[:new_description_05]
        uptodate.site_link = params[:new_site_link]
        uptodate.youtube_link_01 = params[:new_youtube_link_01]
        uptodate.youtube_link_02 = params[:new_youtube_link_02]
        uptodate.save
        
        redirect_to '/'
  end
  
  def detail
    @details = Ecommerce.find(params[:id])
    @detail_sidebar = Ecommerce.all
    @detail_sidebar_01 = @detail_sidebar.sample
    @detail_sidebar_02 = @detail_sidebar.sample
    @detail_sidebar_03 = @detail_sidebar.sample
  end
  
end
