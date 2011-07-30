require "spec_helper"

describe QuestEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/quest_entries").should route_to("quest_entries#index")
    end

    it "routes to #new" do
      get("/quest_entries/new").should route_to("quest_entries#new")
    end

    it "routes to #show" do
      get("/quest_entries/1").should route_to("quest_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quest_entries/1/edit").should route_to("quest_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quest_entries").should route_to("quest_entries#create")
    end

    it "routes to #update" do
      put("/quest_entries/1").should route_to("quest_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quest_entries/1").should route_to("quest_entries#destroy", :id => "1")
    end

  end
end
