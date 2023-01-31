require 'rails_helper'

RSpec.describe User, type: :model do

  # pre-set user attributes before each test
  before(:each) do
    @user_attributes = {
      first_name: "Ethan",
      last_name: "Steip",
      email: "etha@aol.com",
      password: "somepassword",
      password_confirmation: "somepassword",
  }
  end

  describe 'Validations' do

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

    it "validates that the User password and password_confirmation must match" do
      @user = User.create(@user_attributes.merge(:password_confirmation => "somethingelse"))
      expect(@user.password).to_not eql(@user.password_confirmation)
    end

    it "validates that the User's email canno't already exist in the db" do
      @user = User.create(@user_attributes.merge(:email => "test@test.com"))
      @user_2 = User.create(@user_attributes.merge(:email => "test@test.COM"))
      expect(@user_2).to be_invalid
    end

    it "validates that the User must have an eamil" do
      @user = User.create(@user_attributes.merge(:email => nil))
      expect(@user.email).to_not be_present
    end

    it "validates that the User must have a first name" do
      @user = User.create(@user_attributes.merge(:first_name => nil))
      expect(@user.first_name).to_not be_present
    end

    it "validates that the User must have a last name" do
      @user = User.create(@user_attributes.merge(:last_name => nil))
      expect(@user.last_name).to_not be_present
    end

    it "validates that the User's password canno't be less than 8 characters" do
      @user = User.create(@user_attributes.merge(:password => "1234", :password_confirmation => "1234"))
      expect(@user).to be_invalid
    end

    it "authenticates a user even if email case does no match the db" do
      @user = User.create(@user_attributes.merge(:email => "EtHaN@AoL.CoM"))
      expect(@user.email).to eql("ethan@aol.com")
    end
  end

  describe '.authenticate_with_credentials' do

    it "returns the user instance if authenticated" do
      @user = User.create(@user_attributes)
      @auth_user = User.authenticate_with_credentials(@user.email, @user.password)
      expect(@auth_user).to eql(@user)
    end

    it "returns nil if authorization fails" do
      @user = User.create(@user_attributes)
      @auth_user = User.authenticate_with_credentials("wrongemail@aol.com", "somethingelse")
      expect(@auth_user).to eql(nil)
    end
  end

  describe '.strip_whitespace' do

    it "creates a valid user even if there is whitespace in the email" do
      @user = User.create(@user_attributes.merge(:email => "  ethan@aol.com  "))
      expect(@user.email).to eql("ethan@aol.com")
    end
  end
end
