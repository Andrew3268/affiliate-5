class BlogPostsController < ApplicationController

  before_action :post_side, only: [:post_01, :post_02, :post_03, :post_04]

  # 5 Awesome & Useful "BackPack"
  def post_01
  end
  # 10 Awesome Smart Home Gadgets You Need To See
  def post_02
  end
  # 10 Comfortable Travel Pillow you can deep sleep.
  def post_03
  end
  # 10 Awesome & Portable Coffee Makers
  def post_04
  end

  def post_test
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  private 

  def post_side
    @recent_post = Blog.all.order("created_at DESC").limit(5)
    @random = Shoe.all.sample(6)
    @ecommerces = Ecommerce.all.sample(6)
    @random_bags = Bag.all.sample(6)
  end
end
