class PlanController < ApplicationController
  before_action :set_plan, only: [:show, :destroy]

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

  def show
    set_plan
  end

  def destroy
    if current_user.id == @plan.user.id
      @plan.destroy
    end
    redirect_to root_path
  end

  private

  def plan_params
    params.require(:plan).permit(:when,:conditions,:prefecture_id,:user_id).merge(user_id: current_user.id,)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

end
