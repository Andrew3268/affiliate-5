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
end
