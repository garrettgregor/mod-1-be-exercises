require "./lib/customer"
require "./lib/pet"
require "./lib/groomer"
require "rspec"

RSpec.describe Groomer do
  it "exist" do
    clean_paws = Groomer.new

    expect(clean_paws).to be_a(Groomer)
  end
end