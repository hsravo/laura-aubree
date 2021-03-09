class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:admin, :dashboard]

  def index
  end

  def about
  end

  def admin
    if user_signed_in?
      if current_user.role == 'admin'
        redirect_to dashboard_path
      end
    end
  end

  def contact
  end

  def dashboard
  end
end
