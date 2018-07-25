class BaycountsController < ApplicationController

  before_action :find_ebay, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :create]


  def index
    @ebay = Baycount.new
    @ebays = Baycount.all.order("created_at DESC").limit(1)
  end

  def show 
  end

  def new 
    @ebay = Baycount.new
    @ebays = Baycount.all.order("created_at DESC")
  end

  def create
    @ebay = Baycount.new(baycount_params)
    if @ebay.save
      redirect_to '/baycounts'
    else
      redirect_to '/baycounts'
    end
  end

  def edit
  end

  def update
    if @ebay.update(baycount_params)
      redirect_to @ebay
    else
      render 'edit'
    end
  end

  def destroy
    @ebay.destroy
     redirect_to '/baycounts/new'
  end

  private

  def find_baycount
    @ebay = Ebay.find(params[:id])
  end

  def baycount_params
    params.require(:baycount).permit(:bc_title, :bc_min_price, :bc_max_price, :bc_shipping_free, :bc_retrun_free, :bc_both_free,
                   :bc_ebay_option_01, :bc_ebay_option_02, :bc_ebay_option_03, :bc_ebay_option_04, :bc_ebay_option_05,
                   :bc_ebay_option_06, :bc_ebay_option_07)
  end
end


