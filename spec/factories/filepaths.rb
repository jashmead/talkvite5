# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :filepath do
    metafile_id 1
    pathname "MyString"
    file_type "MyString"
  end
end
