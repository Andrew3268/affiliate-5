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
    @curations = Curation.all.order("created_at DESC").limit(16)
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
                                     :cr_sales, :cr_source, :cr_intro, :cr_option_01, :cr_option_02, :cr_option_03, :cr_option_04,
                                     :cr_option_05, :cr_option_06, :cr_spare_01, :cr_spare_02, :cr_spare_03, :cr_spare_04,
                                     :cr_spare_05, :cr_spare_06, :cr_spare_07, :cr_spare_08)
  end
end

