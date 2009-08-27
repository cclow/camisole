Given /^there is a "([^\"]*)" record$/ do |klass|
  klass.camelize.constantize.make
end

Given /^there is a homepage$/ do
  Page.make(:title => "Welcome", :slug => "home")
end

Then /^I should see the page title$/ do
  Then %Q(I should see "#{Page.first.title}")
end

Then /^I should see the page body$/ do
  Then %Q(I should see "#{Page.first.body}")
end

