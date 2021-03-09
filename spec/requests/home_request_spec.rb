require 'rails_helper'

RSpec.describe "Homes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/home/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/home/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /admin" do
    it "returns http success" do
      get "/home/admin"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/home/contact"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /dashboard" do
    it "returns http success" do
      get "/home/dashboard"
      expect(response).to have_http_status(:success)
    end
  end

end
