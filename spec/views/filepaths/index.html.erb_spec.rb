require 'spec_helper'

describe "filepaths/index" do
  before(:each) do
    assign(:filepaths, [
      stub_model(Filepath,
        :metafile_id => 1,
        :pathname => "Pathname",
        :file_type => "File Type"
      ),
      stub_model(Filepath,
        :metafile_id => 1,
        :pathname => "Pathname",
        :file_type => "File Type"
      )
    ])
  end

  it "renders a list of filepaths" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Pathname".to_s, :count => 2
    assert_select "tr>td", :text => "File Type".to_s, :count => 2
  end
end
