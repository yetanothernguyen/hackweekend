# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quest_entry do
      user_id 1
      quest_id 1
      votes_count 1
      data "MyText"
    end
end