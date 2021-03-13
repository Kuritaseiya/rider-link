class ChildPlanController < ApplicationController

  def index
    @plans = Plan.order("created_at DESC")
    @index = 0
  end
end
