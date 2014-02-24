require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.build(:user)
  end
  it "create user" do
    dipak = User.create!(name: "dipak", email: "dipak@yopmail.com")
    nishit = User.create!(name: "nishit", email: "nishit@yopmail.com")
  end
end
