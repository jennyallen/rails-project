class AttendancesController < ApplicationController

  def create
    @event = User.find(params[:attendance][:event_id])
    current_user.attending!(@event)
    #redirect_to @user
  end

  def destroy
    @event = Attendance.find(params[:id]).event
    current_user.notattending!(@event)
    #redirect_to @user
  end
end

end
