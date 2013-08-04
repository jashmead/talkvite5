# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    user_id 1
    talk_id 1
    post_type "MyString"
    content "MyString"
  end
end
