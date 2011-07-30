require "spec_helper"

describe AjaxController do
  describe "routing" do

    it "routes to #new" do
      get("/ajax").should route_to("ajax#new")
    end

  end
end
