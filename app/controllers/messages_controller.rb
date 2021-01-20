class MessagesController < ApplicationController
  def new
    #@messages = Message.all
    #@message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message
    else
      redirect_to root_path
    end
  end

  private
  def message_params
    params.require(:message).permit(:text,:user_id,:plan_id).merge(user_id: current_user.id,plan_id: params[:plan_id])
  end

end
