require 'rails_helper'

RSpec.describe "UserDefineds", type: :request do
  describe "GET /user_defineds" do
    it "works! (now write some real specs)" do
      get user_defineds_path
      expect(response).to have_http_status(200)
    end
  end
end
