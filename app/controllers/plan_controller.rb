class PlanController < ApplicationController

  def index
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:when,:conditions,:prefecture_id,:user_id).merge(user_id: current_user.id, )
  end

end
