class SitesController < ApplicationController
  layout "site"

  before_filter :get_site

  private
  def get_site
    @site = Site.first
  end
end
