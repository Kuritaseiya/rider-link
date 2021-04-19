class InfometionAllController < ApplicationController
  before_action :set_infometion, only: [:show]


  def index
    @infometions = Infometion.order("created_at DESC")
  end

  def show
  end

  private

  def set_infometion
    @infometion = Infometion.find(params[:id])
  end
end
