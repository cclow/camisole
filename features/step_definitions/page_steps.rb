Given /^there is a "([^\"]*)" record$/ do |klass|
  @values ||= {}
  @values[klass.underscore] = klass.camelize.constantize.make
end

Given /^there is a homepage$/ do
  @values ||= {}
  @values['page'] = Page.make(:title => "Welcome", :slug => "home")
end

Then /^I should see the page title$/ do
  Then %Q(I should see "#{@values['page'].title}")
end

Then /^I should see the page body$/ do
  Then %Q(I should see "#{@values['page'].body}")
end

