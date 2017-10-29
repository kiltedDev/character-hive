class StaticPagesController < ApplicationController
  def home
  end

  def calculator
    @races = Race.all
    @stat_values = StatValue.all
  end
end
