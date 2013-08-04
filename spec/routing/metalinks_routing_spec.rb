require "spec_helper"

describe MetalinksController do
  describe "routing" do

    it "routes to #index" do
      get("/metalinks").should route_to("metalinks#index")
    end

    it "routes to #new" do
      get("/metalinks/new").should route_to("metalinks#new")
    end

    it "routes to #show" do
      get("/metalinks/1").should route_to("metalinks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/metalinks/1/edit").should route_to("metalinks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/metalinks").should route_to("metalinks#create")
    end

    it "routes to #update" do
      put("/metalinks/1").should route_to("metalinks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/metalinks/1").should route_to("metalinks#destroy", :id => "1")
    end

  end
end
