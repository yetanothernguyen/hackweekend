require 'spec_helper'

describe "authentications/show.html.erb" do
  before(:each) do
    @authentication = assign(:authentication, stub_model(Authentication,
      :user_id => 1,
      :uid => 1,
      :provider => "Provider"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Provider/)
  end
end
