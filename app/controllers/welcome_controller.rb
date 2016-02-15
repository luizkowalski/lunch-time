class WelcomeController < ApplicationController
  before_action :authenticate, only: :index

  def index
    redirect_to '/votes/' if user_signed_in?
  end

  def write_name
    cookies[:name] = params[:name]
    redirect_to '/votes/'
  end
end
