require 'spec_helper'

describe "quests/show.html.erb" do
  before(:each) do
    @quest = assign(:quest, stub_model(Quest,
      :user_id => 1,
      :title => "Title",
      :city_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
