require "spec_helper"

describe PriceHistoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/price_histories").should route_to("price_histories#index")
    end

    it "routes to #new" do
      get("/price_histories/new").should route_to("price_histories#new")
    end

    it "routes to #show" do
      get("/price_histories/1").should route_to("price_histories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_histories/1/edit").should route_to("price_histories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_histories").should route_to("price_histories#create")
    end

    it "routes to #update" do
      put("/price_histories/1").should route_to("price_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_histories/1").should route_to("price_histories#destroy", :id => "1")
    end

  end
end
