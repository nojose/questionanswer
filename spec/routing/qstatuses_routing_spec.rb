require "spec_helper"

describe QstatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/qstatuses").should route_to("qstatuses#index")
    end

    it "routes to #new" do
      get("/qstatuses/new").should route_to("qstatuses#new")
    end

    it "routes to #show" do
      get("/qstatuses/1").should route_to("qstatuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/qstatuses/1/edit").should route_to("qstatuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/qstatuses").should route_to("qstatuses#create")
    end

    it "routes to #update" do
      put("/qstatuses/1").should route_to("qstatuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/qstatuses/1").should route_to("qstatuses#destroy", :id => "1")
    end

  end
end
