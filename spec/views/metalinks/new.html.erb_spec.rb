require 'spec_helper'

describe "metalinks/new" do
  before(:each) do
    assign(:metalink, stub_model(Metalink,
      :metafile_from_id => 1,
      :metafile_to_id => 1,
      :metalink_type => "MyString",
      :metalink_data => "MyString"
    ).as_new_record)
  end

  it "renders new metalink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", metalinks_path, "post" do
      assert_select "input#metalink_metafile_from_id[name=?]", "metalink[metafile_from_id]"
      assert_select "input#metalink_metafile_to_id[name=?]", "metalink[metafile_to_id]"
      assert_select "input#metalink_metalink_type[name=?]", "metalink[metalink_type]"
      assert_select "input#metalink_metalink_data[name=?]", "metalink[metalink_data]"
    end
  end
end
