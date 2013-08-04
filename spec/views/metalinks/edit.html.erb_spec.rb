require 'spec_helper'

describe "metalinks/edit" do
  before(:each) do
    @metalink = assign(:metalink, stub_model(Metalink,
      :metafile_from_id => 1,
      :metafile_to_id => 1,
      :metalink_type => "MyString",
      :metalink_data => "MyString"
    ))
  end

  it "renders the edit metalink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", metalink_path(@metalink), "post" do
      assert_select "input#metalink_metafile_from_id[name=?]", "metalink[metafile_from_id]"
      assert_select "input#metalink_metafile_to_id[name=?]", "metalink[metafile_to_id]"
      assert_select "input#metalink_metalink_type[name=?]", "metalink[metalink_type]"
      assert_select "input#metalink_metalink_data[name=?]", "metalink[metalink_data]"
    end
  end
end
