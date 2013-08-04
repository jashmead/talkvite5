# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    name "MyString"
    location_type "MyString"
    street1 "MyString"
    street2 "MyString"
    city "MyString"
    country "MyString"
    post_code "MyString"
    address_full "MyText"
    longitude 1.5
    latitude 1.5
  end
end
