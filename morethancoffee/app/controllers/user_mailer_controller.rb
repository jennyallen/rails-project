class UserMailerController < ApplicationController
	def create
      puts params.to_s
      @receiver = User.find(params[:user][:receiver_id])
      puts "This is the receiver " + @receiver.id.to_s
      @event = Event.find(params[:event_id])
      UserMailer.contact_email(current_user, @receiver, @event).deliver
      flash[:success] = "Email successfully sent!"
      redirect_to user_url
	end
end
