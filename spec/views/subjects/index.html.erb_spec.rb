require 'spec_helper'

describe "subjects/index" do
  before(:each) do
    assign(:subjects, [
      stub_model(Subject,
        :metafile_id => 1,
        :talk_id => 2,
        :subject_type => "Subject Type",
        :content => "Content"
      ),
      stub_model(Subject,
        :metafile_id => 1,
        :talk_id => 2,
        :subject_type => "Subject Type",
        :content => "Content"
      )
    ])
  end

  it "renders a list of subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Subject Type".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
