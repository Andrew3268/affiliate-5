class EbaysController < ApplicationController

  before_action :find_ebay, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :create]


  def index
    @ebay = Ebay.new
    @ebays = Ebay.all.order("created_at DESC").limit(1)
  end

  def show 
  end

  def new 
    @ebay = Ebay.new
    @ebays = Ebay.all.order("created_at DESC")
  end

  def create
    @ebay = Ebay.new(ebay_params)
    if @ebay.save
      redirect_to '/ebays'
    else
      redirect_to '/ebays'
    end
  end

  def edit
  end

  def update
    if @ebay.update(ebay_params)
      redirect_to @ebay
    else
      render 'edit'
    end
  end

  def destroy
    @ebay.destroy
     redirect_to '/ebays/new'
  end

  private

  def find_ebay
    @ebay = Ebay.find(params[:id])
  end

  def ebay_params
    params.require(:ebay).permit(:ebay_title, :min_price, :max_price, :shipping_free, :retrun_free, :both_free,
                   :ebay_option_01, :ebay_option_02, :ebay_option_03, :ebay_option_04, :ebay_option_05,
                   :ebay_option_06, :ebay_option_07)
  end
end

