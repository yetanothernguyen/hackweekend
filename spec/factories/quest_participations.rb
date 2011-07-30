# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quest_participation do
      user_id 1
      quest_id 1
      status "MyString"
    end
end