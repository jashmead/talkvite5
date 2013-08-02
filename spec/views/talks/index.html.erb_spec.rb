require 'spec_helper'

describe "talks/index" do
  before(:each) do
    assign(:talks, [
      stub_model(Talk,
        :user_id => 1,
        :subject => "Subject",
        :description => "Description"
      ),
      stub_model(Talk,
        :user_id => 1,
        :subject => "Subject",
        :description => "Description"
      )
    ])
  end

  it "renders a list of talks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
