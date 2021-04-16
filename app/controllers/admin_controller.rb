class AdminController < ApplicationController

  def index
    @plans = Plan.order("created_at DESC")
  end

end
