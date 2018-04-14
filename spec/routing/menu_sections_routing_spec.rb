require "rails_helper"

RSpec.describe MenuSectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/menu_sections").to route_to("menu_sections#index")
    end


    it "routes to #show" do
      expect(:get => "/menu_sections/1").to route_to("menu_sections#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/menu_sections").to route_to("menu_sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/menu_sections/1").to route_to("menu_sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/menu_sections/1").to route_to("menu_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/menu_sections/1").to route_to("menu_sections#destroy", :id => "1")
    end

  end
end
