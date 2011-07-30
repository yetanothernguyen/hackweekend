# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
      user_id 1
      votable_id 1
      votable_type 1
      vote 1
    end
end