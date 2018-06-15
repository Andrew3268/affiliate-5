class BagsController < ApplicationController

  before_action :find_bag, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @bags = Bag.all.order("created_at DESC")
  end

  def show
    @random_bag = Bag.where.not(id: @bag).order("RANDOM()").first
    @random = Bag.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def new
    @bag = current_user.bags.build
  end

  def create
    @bag = current_user.bags.build(bag_params)

    if @bag.save
      redirect_to @bag
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @bag.update(bag_params)
      redirect_to @bag
    else
      render 'edit'
    end
  end

  def destroy
    @bag.destroy
     redirect_to bags_path
  end

  private

  def find_bag
    @bag = Bag.find(params[:id])
  end

  def bag_params
    params.require(:bag).permit(:bag_title, :bag_link, :bag_description, :bag_main_img, :bag_sub_img_01, :bag_sub_img_02,
                                :bag_sub_img_03, :bag_sub_img_04, :bag_sub_img_05, :bag_sub_img_06, :bag_brand, :bag_offer_price,
                                :bag_before_price, :bag_sale, :bag_option_01, :bag_option_02, :bag_option_03, :bag_option_04,
                                :bag_option_05, :bag_option_06, :bag_option_07, :bag_option_08, :bag_option_09, :bag_option_10,
                                :bag_spare_01, :bag_spare_02, :bag_spare_03, :bag_spare_04, :bag_spare_05, :bag_spare_06,
                                :bag_spare_07, :bag_spare_08, :bag_spare_09, :bag_spare_10 )
  end
end


