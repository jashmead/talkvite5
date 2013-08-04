require 'spec_helper'

describe "filepaths/edit" do
  before(:each) do
    @filepath = assign(:filepath, stub_model(Filepath,
      :metafile_id => 1,
      :pathname => "MyString",
      :file_type => "MyString"
    ))
  end

  it "renders the edit filepath form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", filepath_path(@filepath), "post" do
      assert_select "input#filepath_metafile_id[name=?]", "filepath[metafile_id]"
      assert_select "input#filepath_pathname[name=?]", "filepath[pathname]"
      assert_select "input#filepath_file_type[name=?]", "filepath[file_type]"
    end
  end
end
