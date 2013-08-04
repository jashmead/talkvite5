require 'spec_helper'

describe "locations/new" do
  before(:each) do
    assign(:location, stub_model(Location,
      :name => "MyString",
      :location_type => "MyString",
      :street1 => "MyString",
      :street2 => "MyString",
      :city => "MyString",
      :country => "MyString",
      :post_code => "MyString",
      :address_full => "MyText",
      :longitude => 1.5,
      :latitude => 1.5
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", locations_path, "post" do
      assert_select "input#location_name[name=?]", "location[name]"
      assert_select "input#location_location_type[name=?]", "location[location_type]"
      assert_select "input#location_street1[name=?]", "location[street1]"
      assert_select "input#location_street2[name=?]", "location[street2]"
      assert_select "input#location_city[name=?]", "location[city]"
      assert_select "input#location_country[name=?]", "location[country]"
      assert_select "input#location_post_code[name=?]", "location[post_code]"
      assert_select "textarea#location_address_full[name=?]", "location[address_full]"
      assert_select "input#location_longitude[name=?]", "location[longitude]"
      assert_select "input#location_latitude[name=?]", "location[latitude]"
    end
  end
end
