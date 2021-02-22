class ChildController < ApplicationController
  before_action :set_user, only: [:new]
  before_action :set_child, only: [:new]

  def new
    @child = Child.new
    @user = current_user
    user_plan
    child_params
  end

  def create
    @child = Child.new(child_params)
    user_plan
    child_params
    if @child.save
      redirect_to root_path(id: @plan_id)
    else
      redirect_to root_path
    end
  end

  private

  def child_params
    params.require(:child).permit(:user_id,:plan_id).merge(user_id: current_user.id,plan_id: params[:plan_id])
  end

  def user_plan
    @plan = Plan.find(params[:plan_id],params[:user_id])
  end

  def set_child
    @child = Child.find(params[:id])
  end

  def set_plan
    #@plan = Plan.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
