class DashboardController < ApplicationController
  skip_filter :authenticate_user!, :only => :intro
      
  def intro
      if user_signed_in?
        redirect_to '/dashboard'
      end
  end

  def show
    @commute = Commute.find(params[:id])
  end

  def main
  	flash.now[:alert] = 'You should add a <a href="destinations">destination</a> first!' if Destination.where(:user_id => current_user.id).empty?
  	
    @commute = Commute.new
  end

end
