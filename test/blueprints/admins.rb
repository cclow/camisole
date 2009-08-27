Sham.define do
  admin_email                       { Faker::Internet.email }
  admin_password                    { Faker::Lorem.sentence }
end

Admin.blueprint do
  email                             { Sham.admin_email }
  password                          { Sham.admin_password }
  password_confirmation             { password }
end
