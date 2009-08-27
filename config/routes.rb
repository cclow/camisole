ActionController::Routing::Routes.draw do |map|
  map.root :controller => "pages", :action => "show", :slug => "home"
  map.connect "/:slug", :controller => "pages", :action => "show"
end
