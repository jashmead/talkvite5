require 'spec_helper'

describe "filepaths/show" do
  before(:each) do
    @filepath = assign(:filepath, stub_model(Filepath,
      :metafile_id => 1,
      :pathname => "Pathname",
      :file_type => "File Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Pathname/)
    rendered.should match(/File Type/)
  end
end
