Given /^there is a homepage$/ do
  @values ||= {}
  @values['page'] = Page.plan(:title => "Welcome", :slug => "home")
  Page.create(@values['page'])
end

Then /^I should see the page title$/ do
  Then %Q(I should see "#{@values['page'][:title]}")
end

Then /^I should see the page body$/ do
  Then %Q(I should see "#{@values['page'][:body]}")
end

