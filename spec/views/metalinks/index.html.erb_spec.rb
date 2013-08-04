require 'spec_helper'

describe "metalinks/index" do
  before(:each) do
    assign(:metalinks, [
      stub_model(Metalink,
        :metafile_from_id => 1,
        :metafile_to_id => 2,
        :metalink_type => "Metalink Type",
        :metalink_data => "Metalink Data"
      ),
      stub_model(Metalink,
        :metafile_from_id => 1,
        :metafile_to_id => 2,
        :metalink_type => "Metalink Type",
        :metalink_data => "Metalink Data"
      )
    ])
  end

  it "renders a list of metalinks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Metalink Type".to_s, :count => 2
    assert_select "tr>td", :text => "Metalink Data".to_s, :count => 2
  end
end
