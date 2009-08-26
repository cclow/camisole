Sham.define do
  site_title                { Faker::Lorem.words.join(' ') }
  site_subtitle             { Faker::Lorem.words(5).join(' ') }
  site_sidebar              { Faker::Lorem.paragraph }
  site_footer               { Faker::Lorem.sentence }
end

Site.blueprint do
  title                     { Sham.site_title }
  subtitle                  { Sham.site_subtitle }
  sidebar                   { Sham.site_sidebar }
  footer                    { Sham.site_footer }
end
