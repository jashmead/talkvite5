require 'spec_helper'

describe "metalinks/show" do
  before(:each) do
    @metalink = assign(:metalink, stub_model(Metalink,
      :metafile_from_id => 1,
      :metafile_to_id => 2,
      :metalink_type => "Metalink Type",
      :metalink_data => "Metalink Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Metalink Type/)
    rendered.should match(/Metalink Data/)
  end
end
