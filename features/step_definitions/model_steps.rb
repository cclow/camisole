Given /^there is an? "([^\"]*)" record$/ do |klass_name|
  @values ||= {}
  klass = klass_name.camelize.constantize
  hash = klass.plan
  @values[klass_name.underscore] = hash
  klass.create(hash)
end
