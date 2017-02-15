require "rails_helper"

RSpec.describe UserDefinedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_defineds").to route_to("user_defineds#index")
    end

    it "routes to #new" do
      expect(:get => "/user_defineds/new").to route_to("user_defineds#new")
    end

    it "routes to #show" do
      expect(:get => "/user_defineds/1").to route_to("user_defineds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_defineds/1/edit").to route_to("user_defineds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_defineds").to route_to("user_defineds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_defineds/1").to route_to("user_defineds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_defineds/1").to route_to("user_defineds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_defineds/1").to route_to("user_defineds#destroy", :id => "1")
    end

  end
end
