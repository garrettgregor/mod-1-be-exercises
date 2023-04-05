require "./lib/customer"
require "./lib/pet"
require "./lib/groomer"
require "rspec"

RSpec.describe Groomer do
  it "exist and has a name" do
    clean_paws = Groomer.new("Clean Paws")

    expect(clean_paws).to be_a(Groomer)
  end
end