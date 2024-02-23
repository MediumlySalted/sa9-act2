require 'prob3'

RSpec.describe StringWrapper do
  string_wrapper = StringWrapper.new('1e23F')


  describe "#reverse" do
    it "reverses the string" do
      expect(string_wrapper.reverse).to eq('F32e1')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(string_wrapper.upcase).to eq('1E23F')
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(string_wrapper.downcase).to eq('1e23f')
    end
  end
end
