require 'spec_helper'

describe "quest_participations/index.html.erb" do
  before(:each) do
    assign(:quest_participations, [
      stub_model(QuestParticipation,
        :user_id => 1,
        :quest_id => 1,
        :status => "Status"
      ),
      stub_model(QuestParticipation,
        :user_id => 1,
        :quest_id => 1,
        :status => "Status"
      )
    ])
  end

  it "renders a list of quest_participations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
