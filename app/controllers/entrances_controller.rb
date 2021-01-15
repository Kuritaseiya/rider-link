class EntrancesController < ApplicationController

  def index
    @plans = Plan.order("created_at DESC")
    #@user = current_user
    #@plan = Plan.find(params[:id])
    #plan_params
    #user_params
  end

  def destroy
    if current_user.id == @plan.user.id
      @plan.destroy
    end
  end

  private

  #def plan_params
    #params.permit(:when,:conditions,:prefecture_id,:user_id).merge(user_id: current_user.id, )
  #end

  #def user_params
    #params.permit(:nickname, :age, :mybike, :gender_id, :prefecture_id)
  #end

end
