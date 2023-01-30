require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations' do

    it "validates that the product is valid" do
      @category = Category.create({name: "test category"})
      
      @product = Product.create({
        name: "test product",
        description: "This is a test description",
        image: "https://images.pexels.com/photos/6801965/pexels-photo-6801965.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        price_cents: 50000,
        quantity: 10,
        category_id: @category.id,
    })
      expect(@product).to be_valid
    end


    it "validates that the product name is present" do
      @category = Category.create({name: "test category"})
      
      @product = Product.create({
        name: nil,
        description: "This is a test description",
        image: "https://images.pexels.com/photos/6801965/pexels-photo-6801965.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        price_cents: 50000,
        quantity: 10,
        category_id: @category.id,
    })
      expect(@product.name).to_not be_present
    end

    it "validates that the product price is present" do
      @category = Category.create({name: "test category"})
      
      @product = Product.create({
        name: "test name",
        description: "This is a test description",
        image: "https://images.pexels.com/photos/6801965/pexels-photo-6801965.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        price_cents: nil,
        quantity: 10,
        category_id: @category.id,
    })
      expect(@product.price_cents).to_not be_present
    end

    it "validates that the product quantity is present" do
      @category = Category.create({name: "test category"})
      
      @product = Product.create({
        name: "test name",
        description: "This is a test description",
        image: "https://images.pexels.com/photos/6801965/pexels-photo-6801965.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        price_cents: 50000,
        quantity: nil,
        category_id: @category.id,
    })
      expect(@product.quantity).to_not be_present
    end

    it "validates that the product category is present" do
      @category = Category.create({name: "test category"})
      
      @product = Product.create({
        name: "test name",
        description: "This is a test description",
        image: "https://images.pexels.com/photos/6801965/pexels-photo-6801965.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        price_cents: 50000,
        quantity: 10,
        category_id: nil,
    })
      expect(@product.category_id).to_not be_present
    end
  end

end
