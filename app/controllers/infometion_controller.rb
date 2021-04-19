class InfometionController < ApplicationController
  before_action :set_infometion, only: [:show]


  def index
    @infometions = Infometion.order("created_at DESC")
  end 

  def new
    @infometion = Infometion.new
  end

  def create
    @infometion = Infometion.new(infometion_params)
    if @infometion.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def infometion_params
    params.require(:infometion).permit(:year_id,:moon_id,:day_id,:title,:text,).merge(user_id: current_user.id)
  end

  def set_infometion
    @infometion = Infometion.find(params[:id])
  end
end
