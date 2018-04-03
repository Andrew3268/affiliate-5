class BlogsController < ApplicationController
    def blog_01
      @blog_sidebar = Ecommerce.all
      @sidebanner_01 = @blog_sidebar.sample
      @sidebanner_02 = @blog_sidebar.sample
      @sidebanner_03 = @blog_sidebar.sample
      @sidebanner_04 = @blog_sidebar.sample
      @sidebanner_05 = @blog_sidebar.sample
      @sidebanner_06 = @blog_sidebar.sample
      @sidebanner_07 = @blog_sidebar.sample
      @sidebanner_08 = @blog_sidebar.sample
      @sidebanner_09 = @blog_sidebar.sample
      @sidebanner_10 = @blog_sidebar.sample
    end
    
    def blog_02
      @blog_sidebar = Ecommerce.all
      @sidebanner_01 = @blog_sidebar.sample
      @sidebanner_02 = @blog_sidebar.sample
      @sidebanner_03 = @blog_sidebar.sample
      @sidebanner_04 = @blog_sidebar.sample
      @sidebanner_05 = @blog_sidebar.sample
      @sidebanner_06 = @blog_sidebar.sample
      @sidebanner_07 = @blog_sidebar.sample
      @sidebanner_08 = @blog_sidebar.sample
      @sidebanner_09 = @blog_sidebar.sample
      @sidebanner_10 = @blog_sidebar.sample
    end

    def blogs_home
    end

    def blogs_show
    end
end
