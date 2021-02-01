require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creation" do 
    before do
      @user = User.create(email: "navin@example.com", password:"123456", password_confirmation:"123456", first_name: "Navin", last_name: "Ojha")
    end

    it "can be created" do
      expect(@user).to be_valid
    end 

    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
