class PagesController < ApplicationController
  # GET request for / which is our home page
  def home
    @guest_plan = Plan.find(1)
    @host_plan = Plan.find(2)
    @band_plan = Plan.find(3)
  end
  
  def about
    @guest_plan = Plan.find(1)
    @host_plan = Plan.find(2)
    @band_plan = Plan.find(3)
  end
  
  def book
  end
  
end