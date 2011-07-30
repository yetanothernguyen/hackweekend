# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quest do
      user_id 1
      title "MyString"
      city_id 1
      expired_at "2011-07-30"
    end
end