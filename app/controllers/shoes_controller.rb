class ShoesController < ApplicationController

  before_action :find_shoe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @shoes = Shoe.all.order("created_at DESC")
  end

  def show
    @random_shoe = Shoe.where.not(id: @shoe).order("RANDOM()").first
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def new
    @shoe = current_user.shoes.build
  end

  def create
    @shoe = current_user.shoes.build(shoe_params)
     if @shoe.save
       redirect_to shoes_path
     else
       render 'new'
     end
  end

  def edit
  end

  def update
    if @shoe.update(shoe_params)
      redirect_to @shoe
    else
      render 'edit'
    end
  end

  def destroy
    @shoe.destroy
    redirect_to shoes_path
  end

  private

   def find_shoe
     @shoe = Shoe.find(params[:id])
   end

   def shoe_params
     params.require(:shoe).permit(:title, :link, :description, :main_img, :sub_img_01, :sub_img_02, 
                                  :sub_img_03, :sub_img_04, :sub_img_05, :sub_img_06, :brand, :offer_price, 
                                  :before_price, :sale, :option_01, :option_02, :option_03, :option_04, 
                                  :option_05, :option_06, :option_07, :option_08, :option_09, :option_10)
   end

end
