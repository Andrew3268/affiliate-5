class ClothesController < ApplicationController

  before_action :find_clothe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource


  def index
    @clothes = Clothe.all.order("created_at DESC")
  end
  
  def show
    @random_clothe = Clothe.where.not(id: @clothe).order("RANDOM()").first
    @random = Clothe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def new 
    @clothe = current_user.clothes.build
  end

  def create
    @clothe = current_user.clothes.build(clothe_params)

     if @clothe.save
       redirect_to @clothe
     else
       render 'new'
     end
  end

  def edit
  end

  def update
    if @clothe.update(clothe_params)
      redirect_to @clothe
    else
      render 'edit'
    end
  end

  def destroy
    @clothe.destroy
    redirect_to root_path
  end

  private

  def find_clothe
    @clothe = Clothe.find(params[:id]) 
  end

  def clothe_params
    params.require(:clothe).permit(:clothes_title, :clothes_link, :clothes_description, :clothes_main_img, :clothes_sub_img_01, :clothes_sub_img_02,
                                :clothes_sub_img_03, :clothes_sub_img_04, :clothes_sub_img_05, :clothes_sub_img_06, :clothes_brand, :clothes_offer_price,
                                :clothes_before_price, :clothes_sale, :clothes_option_01, :clothes_option_02, :clothes_option_03, :clothes_option_04,
                                :clothes_option_05, :clothes_option_06, :clothes_option_07, :clothes_option_08, :clothes_option_09, :clothes_option_10,
                                :clothes_spare_01, :clothes_spare_02, :clothes_spare_03, :clothes_spare_04, :clothes_spare_05, :clothes_spare_06,
                                :clothes_spare_07, :clothes_spare_08, :clothes_spare_09, :clothes_spare_10 )
  end
    
end
