class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:admin, :dashboard]

  def index
  end

  def about
  end

  def admin
  end

  def contact
  end

  def dashboard
  end
end
