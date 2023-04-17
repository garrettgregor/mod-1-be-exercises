require "spec_helper"

RSpec.describe Curator do
  describe "#initialize" do
    it "initializes with no photographs" do
      curator = Curator.new    
      
      expect(curator.photographs).to eq([])
    end
  end
end