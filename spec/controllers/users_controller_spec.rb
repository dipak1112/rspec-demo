require 'spec_helper'

describe UsersController do
  describe "# index " do
    it "index page" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "# show" do
    before {@user = User.create!(name: 'dipak', email: 'test@yopmail.com')}

    it "show page" do
      get :show, id: @user
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end
