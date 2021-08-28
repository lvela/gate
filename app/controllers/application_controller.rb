# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user

  before_action :authorize

  def authorize
    redirect_to login_path, alert: 'Please login.' if current_user.nil?
  end


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
