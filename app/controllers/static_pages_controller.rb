class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, only: [:dashboard]

  def home
    if user_signed_in?
      redirect_to :dashboard
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def dashboard
  end

end
