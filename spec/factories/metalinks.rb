# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metalink do
    metafile_from_id 1
    metafile_to_id 1
    metalink_type "MyString"
    metalink_data "MyString"
  end
end
