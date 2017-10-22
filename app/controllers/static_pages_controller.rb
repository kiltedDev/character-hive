class StaticPagesController < ApplicationController
  def home
  end

  def calculator
    @point_buys = [10,15,20,25]
    @point_values = [-4,-2,-1,0,1,2,3,5,7,10,13,17]
    @stats = [7,8,9,10,11,12,13,14,15,16,17,18]
  end
end
