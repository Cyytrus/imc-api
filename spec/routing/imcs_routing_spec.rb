require "rails_helper"

RSpec.describe ImcsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/imcs").to route_to("imcs#index")
    end

    it "routes to #show" do
      expect(get: "/imcs/1").to route_to("imcs#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/imcs").to route_to("imcs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/imcs/1").to route_to("imcs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/imcs/1").to route_to("imcs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/imcs/1").to route_to("imcs#destroy", id: "1")
    end
  end
end
