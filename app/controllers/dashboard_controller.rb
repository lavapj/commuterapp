class DashboardController < ApplicationController
  skip_filter :authenticate_user!, :only => :intro

  def intro
      if user_signed_in?
        redirect_to '/dashboard'
      end
  end

  def calculate
    @commute = Commute.find(params[:id])

    @baseline = Commutetype.find(2).commute_attribute
    @commuteAttributes = @commute.commutetype.first!.commute_attribute

    # calculate cash score
    #   car cash value - other cash value
    if @commuteAttributes.cash_fr == true
       @cash_score = @baseline.cash - @commuteAttributes.cash
    else
       @cash_score = (@baseline.cash * @commute.distance) * (1 + @commute.passenger) - (@commuteAttributes.cash * @commute.distance)
    end

    # calculate calories score
    if @commuteAttributes.calories_fr == true
       @cal_score = @commuteAttributes.calories
    else
       @cal_score = @commuteAttributes.calories * @commute.distance
    end

    # calculate envfp score
    if @commuteAttributes.envfp_fr == true
       @envfp_score = @commuteAttributes.envfp
    else
       @envfp_score = (@baseline.envfp * @commute.distance) * (1 + @commute.passengers) - (@commuteAttributes.envfp * @commute.distance)
    end

    format.json { render cash_score: @cash_score, cal_score: @cal_score, envfp_score: @envfp_score }
  end

  def main
    if params[:id] != nil
      @commute = Commute.find(params[:id])

      @baseline = Commutetype.find(2).commute_attribute
      @commuteAttributes = @commute.commutetypes.first!.commute_attribute

      # calculate cash score
      #   car cash value - other cash value
      if @commuteAttributes.cash_fr == true
        @cash_score = @baseline.cash - @commuteAttributes.cash
      else
        @cash_score = (@baseline.cash * @commute.distance) * (1 + @commute.passenger) - (@commuteAttributes.cash * @commute.distance)
      end

      # calculate calories score
      if @commuteAttributes.calories_fr == true
        @cal_score = @commuteAttributes.calories
      else
        @cal_score = @commuteAttributes.calories * @commute.distance
      end

      # calculate envfp score
      if @commuteAttributes.envfp_fr == true
        @envfp_score = @commuteAttributes.envfp
      else
        @envfp_score = (@baseline.envfp * @commute.distance) * (1 + @commute.passenger) - (@commuteAttributes.envfp * @commute.distance)
      end
    else
      @commute = Commute.new
    end
  end

end
