ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home"

  map.connect "/:slug", :controller => "pages", :action => "show"
end
