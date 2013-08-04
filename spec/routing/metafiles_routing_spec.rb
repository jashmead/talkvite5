require "spec_helper"

describe MetafilesController do
  describe "routing" do

    it "routes to #index" do
      get("/metafiles").should route_to("metafiles#index")
    end

    it "routes to #new" do
      get("/metafiles/new").should route_to("metafiles#new")
    end

    it "routes to #show" do
      get("/metafiles/1").should route_to("metafiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/metafiles/1/edit").should route_to("metafiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/metafiles").should route_to("metafiles#create")
    end

    it "routes to #update" do
      put("/metafiles/1").should route_to("metafiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/metafiles/1").should route_to("metafiles#destroy", :id => "1")
    end

  end
end
