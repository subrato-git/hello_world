require "rails_helper"

RSpec.describe SecondDemosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/second_demos").to route_to("second_demos#index")
    end

    it "routes to #new" do
      expect(get: "/second_demos/new").to route_to("second_demos#new")
    end

    it "routes to #show" do
      expect(get: "/second_demos/1").to route_to("second_demos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/second_demos/1/edit").to route_to("second_demos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/second_demos").to route_to("second_demos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/second_demos/1").to route_to("second_demos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/second_demos/1").to route_to("second_demos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/second_demos/1").to route_to("second_demos#destroy", id: "1")
    end
  end
end
