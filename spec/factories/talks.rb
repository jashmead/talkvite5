# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :talk do
    user_id 1
    subject "MyString"
    description "MyString"
  end
end
