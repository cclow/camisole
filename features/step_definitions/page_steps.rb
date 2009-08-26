Given /^there is a "([^\"]*)" record$/ do |klass|
  klass.camelize.constantize.make
end

Then /^I should see the page title$/ do
  Then %Q(I should see "#{Page.first.title}")
end

Then /^I should see the page body$/ do
  Then %Q(I should see "#{Page.first.body}")
end

