require 'spec_helper'

describe "subjects/edit" do
  before(:each) do
    @subject = assign(:subject, stub_model(Subject,
      :metafile_id => 1,
      :talk_id => 1,
      :subject_type => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subject_path(@subject), "post" do
      assert_select "input#subject_metafile_id[name=?]", "subject[metafile_id]"
      assert_select "input#subject_talk_id[name=?]", "subject[talk_id]"
      assert_select "input#subject_subject_type[name=?]", "subject[subject_type]"
      assert_select "input#subject_content[name=?]", "subject[content]"
    end
  end
end
