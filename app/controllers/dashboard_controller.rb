class DashboardController < ApplicationController
  skip_filter :authenticate_user!, :only => :intro

  def intro
      if user_signed_in?
        redirect_to '/dashboard'
      end
  end
end
