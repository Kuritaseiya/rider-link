class ContactUsUserController < ApplicationController

  def new
    @contact_us_user = ContactUsUser.new
  end

  def create
    @contact_us_user = ContactUsUser.new(contact_us_params)
    if @contact_us_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private


  def contact_us_params
    params.require(:contact_us_user).permit(:title,:text,).merge(user_id: current_user.id)
  end
  
end
