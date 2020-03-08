class CheckinsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @checkin = Checkin.new(date: Date.today)
  end

  def create
    user = User.find(params[:user_id])
    checkin = Checkin.new(checkin_params.merge(user_id: user.id))

    if checkin.save
      redirect_to user_checkins_path(user), notice: "You did it!"
    else
      redirect_to new_user_checkin_path(user), alert: "#{checkin.errors.full_messages.join(". ")}"
    end
  end

  private 

  def checkin_params
    params.require(:checkin).permit(:date, :rating)
  end
end
