class Admin::SessionsController < Admin::BaseController
  skip_before_filter :require_admin, :only => [:new, :create]

  def new
    @admin_session = AdminSession.new
  end

  def create
    @admin_session = AdminSession.new(params[:admin_session])
    if @admin_session.save
      flash[:notice] = "Sign in successful."
      redirect_back_or_default admin_root_path
    else
      render :action => 'new'
    end
  end

  def destroy
    current_admin_session.destroy
    flash[:notice] = "Sign out successful."
    redirect_to admin_sign_in_url
  end

end
