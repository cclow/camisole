class Admin::SessionsController < Admin::BaseController
  def new
    @admin_session = AdminSession.new
  end

  def create
    @admin_session = AdminSession.new(params[:admin_session])
    if @admin_session.save
      flash[:notice] = "Sign in successful."
      redirect_to admin_root_path
    else
      render :action => 'new'
    end
  end

  def destroy
  end

end
