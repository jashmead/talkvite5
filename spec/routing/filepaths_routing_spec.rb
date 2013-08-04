require "spec_helper"

describe FilepathsController do
  describe "routing" do

    it "routes to #index" do
      get("/filepaths").should route_to("filepaths#index")
    end

    it "routes to #new" do
      get("/filepaths/new").should route_to("filepaths#new")
    end

    it "routes to #show" do
      get("/filepaths/1").should route_to("filepaths#show", :id => "1")
    end

    it "routes to #edit" do
      get("/filepaths/1/edit").should route_to("filepaths#edit", :id => "1")
    end

    it "routes to #create" do
      post("/filepaths").should route_to("filepaths#create")
    end

    it "routes to #update" do
      put("/filepaths/1").should route_to("filepaths#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/filepaths/1").should route_to("filepaths#destroy", :id => "1")
    end

  end
end
