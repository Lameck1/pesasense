require 'rails_helper'

RSpec.describe "Budgets", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/budgets/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/budgets/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/budgets/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/budgets/show"
      expect(response).to have_http_status(:success)
    end
  end

end
