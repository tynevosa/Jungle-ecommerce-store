require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe 'Validations' do

    # pr-set user attributes before each test
    before(:each) do
      @user_attributes = {
        name: "Ethan S",
        email: "etha@aol.com",
        password: "somepassword",
        password_confirmation: "somepassword",
    }
    end

    it "validates that the User is valid" do
      @user = User.create(@user_attributes)
      expect(@user).to be_valid
    end

    it "validates that the User must have a password" do
      @user = User.create(@user_attributes.merge(:password => nil))
      expect(@user.password).to_not be_present
    end

    it "validates that the User must have a password_confirmation" do
      @user = User.create(@user_attributes.merge(:password_confirmation => nil))
      expect(@user.password_confirmation).to_not be_present
    end

    it "validates that the User password and password_confirmation must match" do
      @user = User.create(@user_attributes)
      expect(@user.password).to eql(@user.password_confirmation)
    end

    it "validates that the User's email canno't already exist in the db" do
      @user = User.create(@user_attributes)
      @user_2 = User.create(@user_attributes)
      expect(@user_2).to be_invalid
    end




  end
end
