require 'spec_helper'

describe "quest_entries/show.html.erb" do
  before(:each) do
    @quest_entry = assign(:quest_entry, stub_model(QuestEntry,
      :user_id => 1,
      :quest_id => 1,
      :votes_count => 1,
      :data => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
