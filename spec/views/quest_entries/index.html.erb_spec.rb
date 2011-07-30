require 'spec_helper'

describe "quest_entries/index.html.erb" do
  before(:each) do
    assign(:quest_entries, [
      stub_model(QuestEntry,
        :user_id => 1,
        :quest_id => 1,
        :votes_count => 1,
        :data => "MyText"
      ),
      stub_model(QuestEntry,
        :user_id => 1,
        :quest_id => 1,
        :votes_count => 1,
        :data => "MyText"
      )
    ])
  end

  it "renders a list of quest_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
