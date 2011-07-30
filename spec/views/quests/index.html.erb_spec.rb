require 'spec_helper'

describe "quests/index.html.erb" do
  before(:each) do
    assign(:quests, [
      stub_model(Quest,
        :user_id => 1,
        :title => "Title",
        :city_id => 1
      ),
      stub_model(Quest,
        :user_id => 1,
        :title => "Title",
        :city_id => 1
      )
    ])
  end

  it "renders a list of quests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
