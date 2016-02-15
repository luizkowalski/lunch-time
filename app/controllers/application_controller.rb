class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    redirect_to welcome_ask_name_path unless user_signed_in?
  end

  def user_signed_in?
    cookies[:name]
  end

  def user
    cookies[:name]
  end

  helper_method :authenticate, :user_signed_in
end
