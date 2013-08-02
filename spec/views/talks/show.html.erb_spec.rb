require 'spec_helper'

describe "talks/show" do
  before(:each) do
    @talk = assign(:talk, stub_model(Talk,
      :user_id => 1,
      :subject => "Subject",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Subject/)
    rendered.should match(/Description/)
  end
end
