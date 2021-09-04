# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user

  before_action :redirect_to_https, :authorize

  def redirect_to_https
    redirect_to :protocol => "https://" unless (request.ssl? || request.local?)
  end

  def authorize
    redirect_to login_path, alert: 'Please login.' if current_user.nil?
  end


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
