require 'spec_helper'

describe "filepaths/new" do
  before(:each) do
    assign(:filepath, stub_model(Filepath,
      :metafile_id => 1,
      :pathname => "MyString",
      :file_type => "MyString"
    ).as_new_record)
  end

  it "renders new filepath form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", filepaths_path, "post" do
      assert_select "input#filepath_metafile_id[name=?]", "filepath[metafile_id]"
      assert_select "input#filepath_pathname[name=?]", "filepath[pathname]"
      assert_select "input#filepath_file_type[name=?]", "filepath[file_type]"
    end
  end
end
