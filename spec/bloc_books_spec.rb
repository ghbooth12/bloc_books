require 'spec_helper'
require 'bloc_works'
require_relative '../app/controllers/books_controller'

RSpec.describe BooksController, :type => :controller do
  describe "GET #index" do
    it "returns http success" do
      get "/index"
      expect(response).to have_http_status(:success)
    end
  end
end
