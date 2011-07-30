require 'spec_helper'

describe "quest_entries/new.html.erb" do
  before(:each) do
    assign(:quest_entry, stub_model(QuestEntry,
      :user_id => 1,
      :quest_id => 1,
      :votes_count => 1,
      :data => "MyText"
    ).as_new_record)
  end

  it "renders new quest_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quest_entries_path, :method => "post" do
      assert_select "input#quest_entry_user_id", :name => "quest_entry[user_id]"
      assert_select "input#quest_entry_quest_id", :name => "quest_entry[quest_id]"
      assert_select "input#quest_entry_votes_count", :name => "quest_entry[votes_count]"
      assert_select "textarea#quest_entry_data", :name => "quest_entry[data]"
    end
  end
end
