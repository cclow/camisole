class PagesController < SitesController
  def show
    @page = Page.find_by_slug(params[:slug])
  end
end
