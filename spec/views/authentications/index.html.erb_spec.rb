require 'spec_helper'

describe "authentications/index.html.erb" do
  before(:each) do
    assign(:authentications, [
      stub_model(Authentication,
        :user_id => 1,
        :uid => 1,
        :provider => "Provider"
      ),
      stub_model(Authentication,
        :user_id => 1,
        :uid => 1,
        :provider => "Provider"
      )
    ])
  end

  it "renders a list of authentications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
  end
end
