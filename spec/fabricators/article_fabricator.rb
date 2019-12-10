require 'faker'

Fabricator(:article) do
  title{ Faker::Name.name }
  body{ Faker::Lorem.sentence } 
  tag_list ''
end