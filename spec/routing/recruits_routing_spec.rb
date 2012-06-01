require "spec_helper"

describe RecruitsController do
  describe "routing" do

    it "routes to #index" do
      get("/recruits").should route_to("recruits#index")
    end

    it "routes to #new" do
      get("/recruits/new").should route_to("recruits#new")
    end

    it "routes to #show" do
      get("/recruits/1").should route_to("recruits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recruits/1/edit").should route_to("recruits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recruits").should route_to("recruits#create")
    end

    it "routes to #update" do
      put("/recruits/1").should route_to("recruits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recruits/1").should route_to("recruits#destroy", :id => "1")
    end

  end
end
