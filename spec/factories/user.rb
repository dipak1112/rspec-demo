require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email 'test@yopmail.com'
    phone '187-612-1272'
    name  'test'
  end
end