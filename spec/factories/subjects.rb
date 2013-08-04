# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject do
    metafile_id 1
    talk_id 1
    subject_type "MyString"
    content "MyString"
  end
end
