class BlogShowController < ApplicationController

  def show_01
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def show_02
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def show_03
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def show_04
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end

  def show_test
    @random = Shoe.all.sample(4)
    @ecommerces = Ecommerce.all.sample(3)
  end
end
