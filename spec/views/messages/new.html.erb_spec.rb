require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :message_type => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", messages_path, "post" do
      assert_select "input#message_message_type[name=?]", "message[message_type]"
      assert_select "input#message_content[name=?]", "message[content]"
    end
  end
end
