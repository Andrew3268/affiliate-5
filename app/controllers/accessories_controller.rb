class AccessoriesController < ApplicationController

  before_action :find_accessory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @accessories = Accessory.all.order("created_at DESC")
  end

  def show
    @random_accessory = Accessory.where.not(id: @accessory).order("RANDOM()").first
    @random = Accessory.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def new
    @accessory = current_user.accessories.build
  end

  def create 
    @accessory = current_user.accessories.build(accessory_params)

     if @accessory.save
       redirect_to '/discounts'
     else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @accessory.update(accessory_params)
       redirect_to '/discounts'
    else
      render 'edit'
    end
  end

  def destroy
    @accessory.destroy
    redirect_to '/discounts'
  end

  private

  def find_accessory
    @accessory = Accessory.find(params[:id])
  end

  def accessory_params
    params.require(:accessory).permit(:acc_title, :acc_link, :acc_description, :acc_main_img, :acc_sub_img_01, :acc_sub_img_02,
                                :acc_sub_img_03, :acc_sub_img_04, :acc_sub_img_05, :acc_sub_img_06, :acc_brand, :acc_offer_price,
                                :acc_before_price, :acc_sale, :acc_option_01, :acc_option_02, :acc_option_03, :acc_option_04,
                                :acc_option_05, :acc_option_06, :acc_option_07, :acc_option_08, :acc_option_09, :acc_option_10,
                                :acc_spare_01, :acc_spare_02, :acc_spare_03, :acc_spare_04, :acc_spare_05, :acc_spare_06,
                                :acc_spare_07, :acc_spare_08, :acc_spare_09, :acc_spare_10 )
  end
end
