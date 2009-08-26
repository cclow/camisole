class PagesController < ApplicationController
  layout "site"

  before_filter :get_site

  def show
    @page = Page.find_by_slug(params[:slug])
  end

  private
  def get_site
    @site = Site.first
  end
end
