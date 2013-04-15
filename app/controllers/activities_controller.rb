class ActivitiesController < ApplicationController
  def index
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new params[:activity]
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path @activity
    else
      flash[:error] = @activity.errors.full_messages.to_sentence
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
  end

  def delete
  end
end
