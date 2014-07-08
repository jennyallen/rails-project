class EventsController < ApplicationController
  def new
  end

  def index 
  	@events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  	@users = @event.users
  	@sender =  current_user
  end

  def email

  	redirect_to 'index'
  end

  def update
    puts params.to_s
    @receiver = User.find(params[:user][:receiver_id])
    puts "This is the receiver " + @receiver.id.to_s
    @event = Event.find(params[:id])
    UserMailer.contact_email(current_user, @receiver, @event).deliver
    flash[:success] = "Email successfully sent!"
    redirect_to event_url
  end



end
