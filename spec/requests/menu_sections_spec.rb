require 'rails_helper'

RSpec.describe "MenuSections", type: :request do
  describe "GET /menu_sections" do
    it "works! (now write some real specs)" do
      get menu_sections_path
      expect(response).to have_http_status(200)
    end
  end
end
