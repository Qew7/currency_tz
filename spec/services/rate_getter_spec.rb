require 'rails_helper'

describe RateGetter do
  context "When called" do 
    subject { described_class.new.call }

    it "should return string rate" do
      expect(subject).to be_an String
    end

    it "should return rate" do
      expect(subject).to match(/^\d*\.\d*/)
    end
  end
end