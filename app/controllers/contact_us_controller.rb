class ContactUsController < ApplicationController
  before_action :set_contact_us, only: [:show]


  def index 
    @contuct_uses = ContactUsUser.order("created_at DESC")
  end

  def show
  end
  


  private

  def set_contact_us
    @contact_us = ContactUsUser.find(params[:id])
  end

end
