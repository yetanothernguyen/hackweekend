require "spec_helper"

describe QuestParticipationsController do
  describe "routing" do

    it "routes to #index" do
      get("/quest_participations").should route_to("quest_participations#index")
    end

    it "routes to #new" do
      get("/quest_participations/new").should route_to("quest_participations#new")
    end

    it "routes to #show" do
      get("/quest_participations/1").should route_to("quest_participations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quest_participations/1/edit").should route_to("quest_participations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quest_participations").should route_to("quest_participations#create")
    end

    it "routes to #update" do
      put("/quest_participations/1").should route_to("quest_participations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quest_participations/1").should route_to("quest_participations#destroy", :id => "1")
    end

  end
end
