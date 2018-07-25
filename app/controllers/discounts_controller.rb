class DiscountsController < ApplicationController

  before_action :find_discount, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :create]

  def index
    @discount = Discount.new
    @discounts = Discount.all.order("created_at DESC").limit(1)
  end

  def show 
  end

  def new
    @discount = Discount.new
    @discounts = Discount.all.order("created_at DESC")
  end

  def create
    @discount = Discount.new(discount_params)
    if @discount.save
      redirect_to '/discounts'
    else
      redirect_to '/discounts'
    end
  end

  def edit
  end

  def update
    if @discount.update(discount_params)
      redirect_to @discount
    else
      render 'edit'
    end
  end

  def destroy
    @discount.destroy
    redirect_to '/discounts/new'
  end

  private

  def find_discount
    @discount = Discount.find(params[:id])
  end

  def discount_params
    params.require(:discount).permit(:eb_title, :eb_min_price, :eb_max_price, :eb_free_sh, :eb_free_rt, :eb_free_both, 
                                     :eb_spare_00, :eb_spare_01, :eb_spare_03, :eb_spare_04, :eb_spare_05, :eb_spare_06,
                                     :eb_spare_07, :eb_spare_08, :eb_spare_09)
  end
end

   
