class HotdealsController < ApplicationController

	def hotdeals_women
    @hotdeals = Ecommerce.all
    @sidebanner_01 = @hotdeals.sample
    @sidebanner_02 = @hotdeals.sample
    @sidebanner_03 = @hotdeals.sample
    @sidebanner_04 = @hotdeals.sample
    @sidebanner_05 = @hotdeals.sample
    @sidebanner_06 = @hotdeals.sample
    @sidebanner_07 = @hotdeals.sample
    @sidebanner_08 = @hotdeals.sample
    @sidebanner_09 = @hotdeals.sample
    @sidebanner_10 = @hotdeals.sample
	end

    def hotdeals_men
    @hotdeals = Ecommerce.all
    @sidebanner_01 = @hotdeals.sample
    @sidebanner_02 = @hotdeals.sample
    @sidebanner_03 = @hotdeals.sample
    @sidebanner_04 = @hotdeals.sample
    @sidebanner_05 = @hotdeals.sample
    @sidebanner_06 = @hotdeals.sample
    @sidebanner_07 = @hotdeals.sample
    @sidebanner_08 = @hotdeals.sample
    @sidebanner_09 = @hotdeals.sample
    @sidebanner_10 = @hotdeals.sample
    end

    def coupons
    @coupon_sidebar = Ecommerce.all
    @sidebanner_01 = @coupon_sidebar.sample
    @sidebanner_02 = @coupon_sidebar.sample
    @sidebanner_03 = @coupon_sidebar.sample
    @sidebanner_04 = @coupon_sidebar.sample
    @sidebanner_05 = @coupon_sidebar.sample
    @sidebanner_06 = @coupon_sidebar.sample
    @sidebanner_07 = @coupon_sidebar.sample
    @sidebanner_08 = @coupon_sidebar.sample
    @sidebanner_09 = @coupon_sidebar.sample
    @sidebanner_10 = @coupon_sidebar.sample
  end

  def promotion
    @promotion_sidebar = Ecommerce.all
    @sidebanner_01 = @promotion_sidebar.sample
    @sidebanner_02 = @promotion_sidebar.sample
    @sidebanner_03 = @promotion_sidebar.sample
    @sidebanner_04 = @promotion_sidebar.sample
    @sidebanner_05 = @promotion_sidebar.sample
    @sidebanner_06 = @promotion_sidebar.sample
    @sidebanner_07 = @promotion_sidebar.sample
    @sidebanner_08 = @promotion_sidebar.sample
    @sidebanner_09 = @promotion_sidebar.sample
    @sidebanner_10 = @promotion_sidebar.sample
  end
end
