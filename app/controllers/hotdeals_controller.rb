class HotdealsController < ApplicationController
   def hotdeal
   end
  
   def deal_01
      @searchbanner = Ecommerce.all
      @sidebanner_01 = @searchbanner.sample
      @sidebanner_02 = @searchbanner.sample
      @sidebanner_03 = @searchbanner.sample
      @sidebanner_04 = @searchbanner.sample
      @sidebanner_05 = @searchbanner.sample
      @sidebanner_06 = @searchbanner.sample
    end
    
    def deal_02
      @searchbanner = Ecommerce.all
      @sidebanner_01 = @searchbanner.sample
      @sidebanner_02 = @searchbanner.sample
      @sidebanner_03 = @searchbanner.sample
      @sidebanner_04 = @searchbanner.sample
      @sidebanner_05 = @searchbanner.sample
      @sidebanner_06 = @searchbanner.sample
    end
    
    def deal_03
      @searchbanner = Ecommerce.all
      @sidebanner_01 = @searchbanner.sample
      @sidebanner_02 = @searchbanner.sample
      @sidebanner_03 = @searchbanner.sample
      @sidebanner_04 = @searchbanner.sample
      @sidebanner_05 = @searchbanner.sample
      @sidebanner_06 = @searchbanner.sample
    end
end
