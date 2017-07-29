class PagesController < ApplicationController
  # GET request for / which is our home page
  def home
    @host_plan = Plan.find(1)
    @band_plan = Plan.find(2)
    @pro_plan = Plan.find(3)
    @medium_plan = Plan.find(4)
    @basic_plan = Plan.find(5)
  end
  
  def about
    @host_plan = Plan.find(1)
    @band_plan = Plan.find(2)
    @pro_plan = Plan.find(3)
    @medium_plan = Plan.find(4)
    @basic_plan = Plan.find(5)
  end
end