ActionController::Routing::Routes.draw do |map|
  map.namespace :admin do |admin|
    admin.sign_in "/sign_in", :controller => "sessions", :action => "new"
    admin.sign_out "/sign_out", :controller => "sessions", :action => "destroy"
    admin.resource :session, :controller => "sessions", :only => [:new, :create, :destroy]
    admin.root :controller => "dashboard"
  end

  map.root :controller => "pages", :action => "show", :slug => "home"
  map.connect "/:slug", :controller => "pages", :action => "show"
end
