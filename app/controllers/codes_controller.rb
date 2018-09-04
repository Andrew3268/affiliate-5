class CodesController < ApplicationController

  before_action :find_code, only: [:show, :edit, :update, :destroy]
  before_action  :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource
  before_action :log_impression, :only=> [:show]
 
  def log_impression
    @code = Code.find(params[:id])
    @code.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end

  def index
    @codes = Code.all.order("created_at DESC")
  end

  def show
    @random_code = Code.where.not(id: @code).order("RANDOM()").first
    @random_shoes = Shoe.all.sample(4)
    @random_gadgets = Ecommerce.all.sample(12)
  end

  def new
    @code = current_user.codes.build
  end

  def create
    @code = current_user.codes.build(code_params)
     if @code.save
      redirect_to '/search/discountCode'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @code.update(code_params)
      redirect_to '/search/discountCode'
    else
      render 'edit'
    end
  end

  def destroy
    @code.destroy
     redirect_to '/search/discountCode'
  end
  
  private

  def find_code
    @code = Code.find(params[:id])
  end

  def code_params
    params.require(:code).permit(:discount_title, :discount_image, :discount_code, :discount_date, :discount_sale,
                                 :discount_source, :discount_link_01, :discount_link_02, :discount_offer, :discount_category,
                                 :discount_amazon, :discount_amazon_card, :discount_used, :discount_used_link, :discount_coupon,
                                 :discount_spare_01, :discount_spare_02, :discount_spare_03, :discount_spare_04, :discount_spare_05,)
  end
end