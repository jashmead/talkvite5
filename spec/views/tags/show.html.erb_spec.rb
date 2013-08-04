require 'spec_helper'

describe "tags/show" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag,
      :tag_code => "Tag Code",
      :tagable_id => 1,
      :tagable_type => "Tagable Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tag Code/)
    rendered.should match(/1/)
    rendered.should match(/Tagable Type/)
  end
end
