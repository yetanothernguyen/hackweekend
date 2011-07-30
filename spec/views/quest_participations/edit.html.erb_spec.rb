require 'spec_helper'

describe "quest_participations/edit.html.erb" do
  before(:each) do
    @quest_participation = assign(:quest_participation, stub_model(QuestParticipation,
      :user_id => 1,
      :quest_id => 1,
      :status => "MyString"
    ))
  end

  it "renders the edit quest_participation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quest_participations_path(@quest_participation), :method => "post" do
      assert_select "input#quest_participation_user_id", :name => "quest_participation[user_id]"
      assert_select "input#quest_participation_quest_id", :name => "quest_participation[quest_id]"
      assert_select "input#quest_participation_status", :name => "quest_participation[status]"
    end
  end
end
