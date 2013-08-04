require 'spec_helper'

describe "metafiles/show" do
  before(:each) do
    @metafile = assign(:metafile, stub_model(Metafile,
      :name => "Name",
      :description => "Description",
      :meta_type => "Meta Type",
      :meta_data => "MyText",
      :meta_controls => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Meta Type/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
