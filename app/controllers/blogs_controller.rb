class BlogsController < ApplicationController
    def blog_01
    end
    
    def blog_02
    end

    def blog_03
    end

    def blog_04
      @random = Shoe.all.sample(1)
      @ecommerces = Ecommerce.all.sample(4)
    end

    def blogs_home
     
    end

    def blog_show
      @random = Shoe.all.sample(1)
      @ecommerces = Ecommerce.all.sample(4)
    end
    
end
