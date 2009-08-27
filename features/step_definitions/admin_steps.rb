Given /^I am signed in as admin$/ do
  Given %Q(there is an "admin" record)
  When %Q(I go to the admin sign in page)
  When %Q(I fill in "email" with previous "email" from "admin")
  When %Q(I fill in "password" with previous "password" from "admin")
  When %Q(I press "sign in")
end

