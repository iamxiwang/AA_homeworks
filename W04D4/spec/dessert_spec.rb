require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Bruce") }
  subject(:shortcake) {Dessert.new("shortcake", 5, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(shortcake.type).to eq("shortcake")
    end
  
    it "sets a quantity" do 
      expect(shortcake.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(shortcake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("peanut", "p", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(shortcake.ingredients).to_not include("chocalate")
      shortcake.add_ingredient("chocalate")
      expect(shortcake.ingredients).to include("chocalate")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(shortcake.mix!).to eq(shortcake.ingredients.shuffle!)
    end
  end

  describe "#eat" do
 
    it "subtracts an amount from the quantity"  do 
      shortcake.eat(3)
      expect(shortcake.quantity).to eq(2)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect{shortcake.eat(7)}.to raise_error("not enough left!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Bruce the Great Baker")
      expect(shortcake.serve).to eq("Chef Bruce the Great Baker has made 5 shortcakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(shortcake)
      chef.back(shortcake)
    end
  end
end
