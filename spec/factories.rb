require 'faker'

FactoryGirl.define do
  factory :clinician do
    name "#{Faker::Name.first_name} #{Faker::Name.last_name}"
    email Faker::Internet.email
    specialism 'Dermatology'
    location 'Oxford'
  end
end
