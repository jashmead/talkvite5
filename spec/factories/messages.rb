# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    message_type "MyString"
    content "MyString"
  end
end
