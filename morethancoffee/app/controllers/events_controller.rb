class EventsController < ApplicationController
  def new
  end

  def index 
  	@events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  	@users = @event.users
  end


end
