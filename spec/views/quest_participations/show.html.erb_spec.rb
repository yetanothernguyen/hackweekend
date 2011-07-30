require 'spec_helper'

describe "quest_participations/show.html.erb" do
  before(:each) do
    @quest_participation = assign(:quest_participation, stub_model(QuestParticipation,
      :user_id => 1,
      :quest_id => 1,
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
