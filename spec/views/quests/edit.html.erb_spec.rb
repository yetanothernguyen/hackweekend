require 'spec_helper'

describe "quests/edit.html.erb" do
  before(:each) do
    @quest = assign(:quest, stub_model(Quest,
      :user_id => 1,
      :title => "MyString",
      :city_id => 1
    ))
  end

  it "renders the edit quest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quests_path(@quest), :method => "post" do
      assert_select "input#quest_user_id", :name => "quest[user_id]"
      assert_select "input#quest_title", :name => "quest[title]"
      assert_select "input#quest_city_id", :name => "quest[city_id]"
    end
  end
end
