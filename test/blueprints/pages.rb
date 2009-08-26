Sham.define do
  page_title              { Faker::Lorem.sentence }
  page_slug               { Faker::Lorem.words[0] }
  page_body               { Faker::Lorem.paragraph }
end

Page.blueprint do
  title                   { Sham.page_title }
  slug                    { Sham.page_slug }
  body                    { Sham.page_body }
end
