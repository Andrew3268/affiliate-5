class CurationsController < ApplicationController


  before_action :find_curation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :log_impression, :only=> [:show]
  load_and_authorize_resource

 
  def log_impression
    @curation.impressions.create(ip_address: request.remote_ip)
  end
 
  def index
    @curations = Curation.all.order("created_at DESC")
  end

  def show
    @random_curation = Curation.where.not(id: @curation).order("RANDOM()").first
  end

  def new
    @curation = current_user.curations.build
  end

  def create
    @curation = current_user.curations.build(curation_params)
    if @curation.save
      redirect_to @curation
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @curation.update(curation_params)
      redirect_to @curation
    else
      render 'edit'
    end
  end

  def destroy
    @curation.destroy
    redirect_to '/curations'
  end

  private

  def find_curation
    @curation = Curation.find(params[:id])
  end

  def find_impression
    @curation = Curation.find(params[:id])
  end

  def curation_params
    params.require(:curation).permit(:cr_title, :cr_url, :cr_img, :cr_youtube01, :cr_youtube02, :cr_bprice, :cr_aprice,
                                     :cr_sales, :cr_intro)
  end

end
