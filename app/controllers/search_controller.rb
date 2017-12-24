class SearchController < ApplicationController
    
    def quicksearch
      @quicksearch_sidebar = Ecommerce.all
      @sidebanner_01 = @quicksearch_sidebar.sample
      @sidebanner_02 = @quicksearch_sidebar.sample
      @sidebanner_03 = @quicksearch_sidebar.sample
      @sidebanner_04 = @quicksearch_sidebar.sample
      @sidebanner_05 = @quicksearch_sidebar.sample
      @sidebanner_06 = @quicksearch_sidebar.sample
      @sidebanner_07 = @quicksearch_sidebar.sample
      @sidebanner_08 = @quicksearch_sidebar.sample
      @sidebanner_09 = @quicksearch_sidebar.sample
      @sidebanner_10 = @quicksearch_sidebar.sample
    end
end
