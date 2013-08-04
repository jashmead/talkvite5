# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metafile do
    name "MyString"
    description "MyString"
    meta_type "MyString"
    meta_data "MyText"
    meta_controls "MyText"
  end
end
