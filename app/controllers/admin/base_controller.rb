class Admin::BaseController < ApplicationController
  layout 'admin'

  before_filter :require_admin
  helper_method :current_admin_session, :current_admin

  private
  def current_admin_session
    return @current_admin_session if defined?(@current_admin_session)
    @current_admin_session = AdminSession.find
  end

  def current_admin
    return @current_admin if defined?(@current_admin)
    @current_admin = current_admin_session && current_admin_session.record
  end

  def require_admin
    unless current_admin
      store_location
      flash[:notice] = "You must sign in as admin to access this page"
      redirect_to sign_in_url
      return false
    end
  end

  def store_location
    session[:return_to] = request.request_uri
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
