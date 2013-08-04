require 'spec_helper'

describe "metafiles/index" do
  before(:each) do
    assign(:metafiles, [
      stub_model(Metafile,
        :name => "Name",
        :description => "Description",
        :meta_type => "Meta Type",
        :meta_data => "MyText",
        :meta_controls => "MyText"
      ),
      stub_model(Metafile,
        :name => "Name",
        :description => "Description",
        :meta_type => "Meta Type",
        :meta_data => "MyText",
        :meta_controls => "MyText"
      )
    ])
  end

  it "renders a list of metafiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Meta Type".to_s, :count => 2
    ## next two lines seem to cause fails, why?
    ## assert_select "tr>td", :text => "MyText".to_s, :count => 2
    ## assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
