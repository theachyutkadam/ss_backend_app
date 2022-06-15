require 'rails_helper'

RSpec.describe "Customers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/customers"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/customers?first_name=first_user&last_name=last_user&contact=5555555555"
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET /update" do
  #   it "returns http success" do
  #     get "/customers/update"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /destroy" do
  #   it "returns http success" do
  #     get "/customers/destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
