class EntrancesController < ApplicationController

  def index
    @plans = Plan.order("created_at DESC")
    @index = 0
  end

  def destroy
    if current_user.id == @plan.user.id
      @plan.destroy
    end
  end
  
  private

  def entrance_params
    params.require(:entrance).permit(:choice_id).merge(user_id: current_user.id)
  end


end
