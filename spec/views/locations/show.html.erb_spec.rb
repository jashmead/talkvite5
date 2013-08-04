require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "Name",
      :location_type => "Location Type",
      :street1 => "Street1",
      :street2 => "Street2",
      :city => "City",
      :country => "Country",
      :post_code => "Post Code",
      :address_full => "MyText",
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location Type/)
    rendered.should match(/Street1/)
    rendered.should match(/Street2/)
    rendered.should match(/City/)
    rendered.should match(/Country/)
    rendered.should match(/Post Code/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
