require 'spec_helper'

describe "subjects/new" do
  before(:each) do
    assign(:subject, stub_model(Subject,
      :metafile_id => 1,
      :talk_id => 1,
      :subject_type => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subjects_path, "post" do
      assert_select "input#subject_metafile_id[name=?]", "subject[metafile_id]"
      assert_select "input#subject_talk_id[name=?]", "subject[talk_id]"
      assert_select "input#subject_subject_type[name=?]", "subject[subject_type]"
      assert_select "input#subject_content[name=?]", "subject[content]"
    end
  end
end
