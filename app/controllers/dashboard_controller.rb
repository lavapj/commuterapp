class DashboardController < ApplicationController
  skip_filter :authenticate_user!, :only => :intro

  def intro
      if user_signed_in?
        redirect_to '/dashboard'
      end
  end

  def main
    @commute = Commute.new

    # mileage = 12            # testing
    # commute_type = 2   # testing

    @baseline = Commutetype.find(2).commute_attribute

    # @baseline = CommuteAttribute.where("commutetype_id = ?", 2).first
    # @mycommute = CommuteAttribute.where("commutetype_id = ?", commute_type).first
    @passengers = 2

    # person + passengers
    # 2 * 10 miles
    # commute passenger

    # calculate cash score
    #   car cash value - other cash value
    # if @commute.cash_fr == true
    #   @cash_score = @baseline.cash - @commute.cash
    # else
    #   @cash_score = (@baseline.cash * mileage) * (1 + @passengers) - (@commute.cash * mileage)
    # end

    # # calculate calories score
    # if @commute.calories_fr == true
    #   @cal_score = @commute.calories
    # else
    #   @cal_score = @commute.calories * mileage
    # end

    # # calculate envfp score
    # if @commute.envfp_fr == true
    #   @envfp_score = @commute.envfp
    # else
    #   @envfp_score = (@baseline.envfp * mileage) * (1 + @passengers) - (@commute.envfp * mileage)
    # end

  end

end
