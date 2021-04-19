class CompanyController < ApplicationController

  def index
    @infometions = Infometion.order("created_at DESC")
  end
  
end
