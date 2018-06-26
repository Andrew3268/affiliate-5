class BlogsController < ApplicationController

  before_action :find_blog, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  load_and_authorize_resource

  def index
    @blogs = Blog.all.order("created_at DESC")
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end 

  def show
  end

  def new
    @blog = current_user.blogs.build
  end

  def create
    @blog = current_user.blogs.build(blog_params)

      if @blog.save
        redirect_to blogs_path
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path
    else
      render 'edit'
    end
  end

  def destroy 
    @blog.destroy
    redirect_to blogs_path
  end

  private

  def find_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:blog_title, :blog_link, :blog_main_img, :blog_date, :blog_description,
                                  :blog_spare_01, :blog_spare_02, :blog_spare_03, :blog_spare_04, :blog_spare_05,
                                  :blog_spare_06, :blog_spare_07, :blog_spare_08)
  end
end


