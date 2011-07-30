require 'spec_helper'

describe "quest_participations/new.html.erb" do
  before(:each) do
    assign(:quest_participation, stub_model(QuestParticipation,
      :user_id => 1,
      :quest_id => 1,
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new quest_participation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quest_participations_path, :method => "post" do
      assert_select "input#quest_participation_user_id", :name => "quest_participation[user_id]"
      assert_select "input#quest_participation_quest_id", :name => "quest_participation[quest_id]"
      assert_select "input#quest_participation_status", :name => "quest_participation[status]"
    end
  end
end
