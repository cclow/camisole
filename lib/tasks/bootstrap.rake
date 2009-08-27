namespace :bootstrap do
  desc "Add site and homepage"
  task :site => [:environment, 'db:migrate'] do
    Site.create(:title => "My Site", :subtitle => "...change me...",
                :sidebar => "...change me...", :footer => "...change me...") unless Site.first
    Page.create(:title => "Welcome", :slug => "home",
                :body => "Welcome to my homepage") unless Page.find_by_slug('home')
  end

  desc "Run all bootstraps"
  task :all => [:site]
end
