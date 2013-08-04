require 'spec_helper'

describe "metafiles/new" do
  before(:each) do
    assign(:metafile, stub_model(Metafile,
      :name => "MyString",
      :description => "MyString",
      :meta_type => "MyString",
      :meta_data => "MyText",
      :meta_controls => "MyText"
    ).as_new_record)
  end

  it "renders new metafile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", metafiles_path, "post" do
      assert_select "input#metafile_name[name=?]", "metafile[name]"
      assert_select "input#metafile_description[name=?]", "metafile[description]"
      assert_select "input#metafile_meta_type[name=?]", "metafile[meta_type]"
      assert_select "textarea#metafile_meta_data[name=?]", "metafile[meta_data]"
      assert_select "textarea#metafile_meta_controls[name=?]", "metafile[meta_controls]"
    end
  end
end
