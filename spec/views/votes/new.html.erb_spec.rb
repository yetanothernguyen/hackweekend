require 'spec_helper'

describe "votes/new.html.erb" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :user_id => 1,
      :votable_id => 1,
      :votable_type => 1,
      :vote => 1
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path, :method => "post" do
      assert_select "input#vote_user_id", :name => "vote[user_id]"
      assert_select "input#vote_votable_id", :name => "vote[votable_id]"
      assert_select "input#vote_votable_type", :name => "vote[votable_type]"
      assert_select "input#vote_vote", :name => "vote[vote]"
    end
  end
end
